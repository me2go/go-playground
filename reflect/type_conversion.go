package reflect

import (
	"fmt"
	"reflect"
)

type ConversionStruct struct {
	A int
}

func internalPkgPath(i interface{}) string {
	t := reflect.TypeOf(i)
	s := t.String()
	fmt.Printf("----%s----\n", s)
	return s
}

func PkgPath() string {
	v := &ConversionStruct{}
	return internalPkgPath(v)
}
