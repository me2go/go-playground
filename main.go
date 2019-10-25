package main

import "fmt"

func main() {
	//atomic.Load64Align()
	a := []interface{}{1, 2, 3, 4}
	f := []func(){}
	for _, b := range a {
		c := b
		f = append(f, func() { fmt.Println(c) })
	}
	for _, e := range f {
		e()
	}
}
