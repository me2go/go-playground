package main

import "fmt"

type Ts struct {
	A int
	B int
}

func (i *Ts) Display() {
	fmt.Println(*i)
}

func customStruct() {
	var a Ts
	var b interface{} = a
	c := b.(Ts)
	c.Display()
}

func stdInt() {
	var a int
	var b interface{} = a
	c := b.(int)
	fmt.Println(c)
}

type MyInt int

func (i *MyInt) Show() {
	fmt.Println(*i)
}

func customInt() {
	var a MyInt
	var b interface{} = a
	c := b.(MyInt)
	c.Show()
}

func directCall(a, b int) int {
	return a + b
}

func main() {
	//code for testing casting
	stdInt()
	//code for testing directing call func
	//c := directCall(10, 11)
	//fmt.Println(c)

	//code for testing struct call func
	//var c Ts
	//c.Display()
}
