package main

import "fmt"

type Ts struct {
	A int
	B int
}

func (i *Ts) Display() {
	fmt.Println(*i)
}

func (i *Ts) Show() {
	fmt.Println(*i)
}

func (i *Ts) Add() int {
	return i.A + i.B
}

func (i Ts) Go() {
	i.B = i.A
	fmt.Printf("%p\n", &i)
}

type I interface {
	Display()
	Show()
}

type L interface {
	Add() int
	Show()
}

type M interface {
	Go()
}

func customStruct() {
	var a Ts
	a.A = 1
	a.B = 2
	//var b I = &a
	//var c L = &a
	//var d M = a
	//b.Display()
	//b.Show()
	//c.Show()
	(&a).Go()
	//fmt.Printf("%v\n", d.(Ts))
	fmt.Printf("%#v\n", a)
}

func stdInt() {
	var a int = 10
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
	//stdInt()

	//code for testing casting custom struct
	customStruct()
	//code for testing directing call func
	//c := directCall(10, 11)
	//fmt.Println(c)

	//code for testing struct call func
	//var c Ts
	//c.Display()
}
