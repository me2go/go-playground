package main

import (
	"crypto/rsa"
	"crypto/sha256"
	"crypto/x509"
	"encoding/pem"
	"fmt"
	"io/ioutil"
	"log"
	"os"
)

func main() {
	data, _ := ioutil.ReadFile("raw/private.pem")
	block, _ := pem.Decode(data)
	pri, err := x509.ParsePKCS1PrivateKey(block.Bytes)
	if err != nil {
		log.Fatalf("err:%v", err)
	}
	pubKey := pri.Public().(*rsa.PublicKey)
	fmt.Printf("key length: %d\n", len(pubKey.N.Bytes()))
	fmt.Printf("exponent is: %d\n", pubKey.E)

	rbytes := []byte{}
	bytes := pubKey.N.Bytes()
	for i := len(bytes) - 1; i >= 0; i-- {
		rbytes = append(rbytes, bytes[i])
	}

	hash := sha256.New()
	hash.Write(rbytes)
	out := hash.Sum(nil)

	for i, b := range out {
		if i%16 == 0 && i != 0 {
			fmt.Println()
		}
		fmt.Printf("%#x ", b)
	}
	fmt.Println()
	ioutil.WriteFile("raw/mr_signer", out, os.ModePerm)
}
