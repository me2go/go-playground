package atomic

import (
	"fmt"
	"sync/atomic"
	"unsafe"
)

//根据golang源码runtime/internal/atomic/asm_386.s(仅限32位系统)
//Load64方法要求目标地址必须按64位对齐

// Load64Align 测试64位对齐
func Load64Align() {
	x := make([]uint32, 4)
	u := unsafe.Pointer(uintptr(unsafe.Pointer(&x[0])) | 4) // force alignment to 4

	up64 := (*uint64)(u) // misaligned
	p64 := (*int64)(u)   // misaligned
	atomic.LoadUint64(up64)
	atomic.LoadInt64(p64)

	type testStruct struct {
		A uint64
		B uint
	}

	t := &testStruct{128, 1}

	p := unsafe.Pointer(t)

	aligned := ((uintptr(p) & 7) == 0)
	if aligned {
		fmt.Printf("p is aligned\n")
	}

	pp := unsafe.Pointer((uintptr(p) + 1))

	aligned = (uintptr(pp) & 7) == 0
	if !aligned {
		fmt.Printf("p + 1 is not aligned\n")
	}

	tp := (*uint64)(p)
	v := atomic.LoadUint64(tp)
	fmt.Printf("v is %d\n", v)

	ntp := (*uint64)(pp)
	nv := atomic.LoadUint64(ntp)
	fmt.Printf("nv is %d\n", nv)
}
