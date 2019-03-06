package crypto

import (
	"fmt"
	"io/ioutil"
	"os"
	"testing"

	"github.com/hyperledger/fabric/bccsp/sw"
)

func BenchmarkVerify(b *testing.B) {
	td, err := ioutil.TempDir(tempDir, "test")
	if err != nil {
		fmt.Println("err tempDir:", err)
	}
	ks, err := sw.NewFileBasedKeyStore(nil, td, false)
	if err != nil {
		fmt.Println("err NewFileB:", err)
	}
	p, err := sw.NewWithParams(256, "SHA2", ks)
	if err != nil {
		fmt.Println("err NewWithP:", err)
	}
	os.RemoveAll(td)
}
