package ot

import (
	"crypto/elliptic"
	"crypto/rand"
	"math/big"
	"testing"
)

func TestSimpleOT(t *testing.T) {
	selections := []int{10, 100}
	p := NewOTProvider(selections)

	idx := 1
	c := NewOTConsumer(idx)
	stepOne := p.StepOne()
	stepTwo := c.StepOne(stepOne)
	r := p.StepTwo(stepTwo)

	sel := c.StepTwo(r)

	if sel.Int64() != int64(selections[idx]) {
		t.FailNow()
	}
}

func TestEncryption(t *testing.T) {
	curve := elliptic.P256()

	pk, x, y, _ := elliptic.GenerateKey(curve, rand.Reader)

	v, _ := new(big.Int).SetString("98170013848862974094370221517153187813831258554775501125398952689352873641500", 10)
	x1, y1, x2, y2 := Encrypt(curve, x, y, v)

	m := Decrypt(curve, x1, y1, x2, y2, new(big.Int).SetBytes(pk))
	if m.Cmp(v) != 0 {
		t.FailNow()
	}
}
