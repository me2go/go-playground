package ot

import (
	"crypto/elliptic"
	"crypto/rand"
	"io"
	"math/big"
)

type OTProvider struct {
	selections []int

	curve elliptic.Curve

	sk  *big.Int
	pkx *big.Int
	pky *big.Int

	ms []*big.Int
}

type OTConsumer struct {
	curve elliptic.Curve
	k     *big.Int
	sel   int
}

func NewOTConsumer(idx int) *OTConsumer {
	c := &OTConsumer{
		curve: elliptic.P256(),
		sel:   idx,
	}

	c.k, _ = Random(c.curve)
	return c
}

func Random(curve elliptic.Curve) (pk *big.Int, err error) {
	N := curve.Params().N
	bitSize := N.BitLen()
	byteLen := (bitSize + 7) / 8
	priv := make([]byte, byteLen)

	var mask = []byte{0xff, 0x1, 0x3, 0x7, 0xf, 0x1f, 0x3f, 0x7f}

	ok := false

	for !ok {
		_, err = io.ReadFull(rand.Reader, priv)
		if err != nil {
			return
		}
		// We have to mask off any excess bits in the case that the size of the
		// underlying field is not a whole number of bytes.
		priv[0] &= mask[bitSize%8]
		// This is because, in tests, rand will return all zeros and we don't
		// want to get the point at infinity and loop forever.
		priv[1] ^= 0x42

		// If the scalar is out of range, sample another random number.
		if new(big.Int).SetBytes(priv).Cmp(N) >= 0 {
			continue
		}

		pk = new(big.Int).SetBytes(priv)
		ok = true
	}
	return
}

func Encrypt(curve elliptic.Curve,
	x *big.Int, y *big.Int, m *big.Int) (x1, y1, x2, y2 *big.Int) {
	r, _ := Random(curve)

	x1, y1 = curve.ScalarMult(x, y, r.Bytes())

	x1.Add(x1, m)
	y1.Add(y1, m)

	x2, y2 = curve.ScalarBaseMult(r.Bytes())

	return
}

func Decrypt(curve elliptic.Curve, x1, y1, x2, y2 *big.Int, pk *big.Int) *big.Int {
	x, _ := curve.ScalarMult(x2, y2, pk.Bytes())

	m1 := x1.Sub(x1, x)
	//m2 := y1.Sub(y1, y)
	return m1
}

func NewOTProvider(selections []int) *OTProvider {
	sot := &OTProvider{
		curve:      elliptic.P256(),
		selections: selections,
		ms:         make([]*big.Int, len(selections)),
	}

	priv, x, y, _ := elliptic.GenerateKey(sot.curve, rand.Reader)

	sot.sk = new(big.Int).SetBytes(priv)
	sot.pkx = x
	sot.pky = y

	for i := 0; i < len(sot.ms); i++ {
		sot.ms[i], _ = Random(sot.curve)
	}

	return sot
}

type StepOneParameter struct {
	PublicKeyX *big.Int
	PublicKeyY *big.Int

	Shadows []*big.Int
}

func (p *OTProvider) StepOne() StepOneParameter {
	return StepOneParameter{
		PublicKeyX: p.pkx,
		PublicKeyY: p.pky,
		Shadows:    p.ms,
	}
}

type StepTwoParameter struct {
	Qx *big.Int
	Qy *big.Int
	Ox *big.Int
	Oy *big.Int
}

func (c *OTConsumer) StepOne(p StepOneParameter) StepTwoParameter {
	if c.sel >= len(p.Shadows) {
		panic("selection out of range")
	}

	st := StepTwoParameter{}

	st.Qx, st.Qy, st.Ox, st.Oy = Encrypt(c.curve, p.PublicKeyX, p.PublicKeyY, c.k)

	st.Qx.Add(st.Qx, p.Shadows[c.sel])
	st.Qy.Add(st.Qy, p.Shadows[c.sel])

	return st
}

type Result struct {
	candidates []*big.Int
	idx        int
}

func (p *OTProvider) StepTwo(param StepTwoParameter) Result {
	mks := make([]*big.Int, len(p.ms))
	for i, m := range p.ms {
		qx := new(big.Int).Sub(param.Qx, m)
		qy := new(big.Int).Sub(param.Qy, m)
		mks[i] = Decrypt(p.curve, qx, qy, param.Ox, param.Oy, p.sk)
	}

	r := Result{
		candidates: make([]*big.Int, 2),
	}

	idx, _ := rand.Int(rand.Reader, big.NewInt(2))
	r.idx = int(idx.Int64())

	r.candidates[0] = mks[r.idx].Add(mks[r.idx], new(big.Int).SetInt64(int64(p.selections[r.idx])))
	r.candidates[1] = mks[1-r.idx].Add(mks[1-r.idx], new(big.Int).SetInt64(int64(p.selections[1-r.idx])))
	return r
}

func (c *OTConsumer) StepTwo(r Result) *big.Int {
	if r.idx == c.sel {
		return new(big.Int).Sub(r.candidates[0], c.k)
	} else {
		return new(big.Int).Sub(r.candidates[1], c.k)
	}
}
