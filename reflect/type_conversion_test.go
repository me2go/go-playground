package reflect

import (
	"log"
	"reflect"
	"testing"
)

func TestPkgPath(t *testing.T) {
	s := PkgPath()
	if s != "*reflect.ConversionStruct" {
		log.Println(s)
		t.FailNow()
	}
}

func TestValueEq(t *testing.T) {
	v1 := reflect.TypeOf(ConversionStruct{})
	v2 := reflect.TypeOf(ConversionStruct{})
	if v1 != v2 {
		log.Println("not equal")
		t.FailNow()
	}
}
