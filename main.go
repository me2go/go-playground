package main

import (
	"fmt"
	"reflect"
)

func main() {
	//atomic.Load64Align()
	//sync.ConcurrentReadAndWrite()

	emptyMap := make(map[[32]byte]uint16)
	fmt.Printf("%d\n", reflect.TypeOf(emptyMap).Size())
}
