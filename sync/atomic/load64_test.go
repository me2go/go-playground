package atomic

import (
	"runtime"
	"testing"
	"unsafe"

	satomic "sync/atomic"
)

func TestLoad64Align(t *testing.T) {
	Load64Align()
}

func shouldPanic(t *testing.T, name string, f func()) {
	defer func() {
		if recover() == nil {
			t.Errorf("%s did not panic", name)
		}
	}()
	f()
}

// Variant of sync/atomic's TestUnaligned64:
func TestUnaligned64(t *testing.T) {
	// Unaligned 64-bit atomics on 32-bit systems are
	// a continual source of pain. Test that on 32-bit systems they crash
	// instead of failing silently.

	switch runtime.GOARCH {
	default:
		if unsafe.Sizeof(int(0)) != 4 {
			t.Skip("test only runs on 32-bit systems")
		}
	case "amd64p32":
		// amd64p32 can handle unaligned atomics.
		t.Skipf("test not needed on %v", runtime.GOARCH)
	}

	x := make([]uint32, 4)
	u := unsafe.Pointer(uintptr(unsafe.Pointer(&x[0])) | 4) // force alignment to 4

	up64 := (*uint64)(u) // misaligned
	p64 := (*int64)(u)   // misaligned

	shouldPanic(t, "Load64", func() { satomic.LoadUint64(up64) })
	shouldPanic(t, "Loadint64", func() { satomic.LoadInt64(p64) })
	shouldPanic(t, "Store64", func() { satomic.StoreUint64(up64, 0) })
}
