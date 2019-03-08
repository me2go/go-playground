package encode

import (
	"encoding/binary"
	"testing"
)

func BenchmarkPutUvarint(b *testing.B) {
	for i := uint64(0); i < uint64(b.N); i++ {
		buf := make([]byte, binary.MaxVarintLen64)
		n := binary.PutUvarint(buf, i)
		_ = buf[:n]
	}
}
func BenchmarkUvarint(b *testing.B) {
	for i := uint64(0); i < uint64(b.N); i++ {
		buf := make([]byte, binary.MaxVarintLen64)
		n := binary.PutUvarint(buf, i)
		buf = buf[:n]
		binary.Uvarint(buf)
	}
}
