package reflect

import (
	"fmt"
	"reflect"
	"testing"
)

func TestReflectPkgPath(t *testing.T) {
	var tt struct {
		t ReflectedStruct
		a int
		b string
	} = struct {
		t ReflectedStruct
		a int
		b string
	}{
		t: ReflectedStruct{},
		a: 10,
		b: "",
	}
	rt := reflect.TypeOf(tt)
	for i := 0; i < rt.NumField(); i++ {
		fmt.Printf("name: %s,%s\n", rt.Field(i).Name, rt.Field(i).PkgPath)
	}
}
