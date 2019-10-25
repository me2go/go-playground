package reflect

import "testing"

func BenchmarkAssertFunc(b *testing.B) {
	for i := 0; i < b.N; i++ {
		AssertFunc()
	}
}
