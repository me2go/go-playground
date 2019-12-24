package main

import (
	"bytes"
	"fmt"

	"github.com/ethereum/go-ethereum/rlp"
)

func main() {
	ba := [17][]byte{}
	for i := 0; i < 16; i++ {
		k := bytes.Repeat([]byte{byte(i + 1)}, 32)
		ba[i] = k
	}
	ba[16] = []byte("value1")

	buf := bytes.NewBuffer([]byte{})
	rlp.Encode(buf, ba)

	fmt.Printf("%x\n", buf.Bytes())
}
