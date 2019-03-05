package reflect

type AssertInterface interface {
	Show()
}
type AStruct struct {
	a []int
}

func (a *AStruct) Show() {

}

type InternalAssertStruct struct {
	AStruct
}

type AssertStruct struct {
	S *InternalAssertStruct
}

func internaleFunc(i interface{}) *InternalAssertStruct {
	return (i.(*AssertStruct)).S
}

func AssertFunc() {
	s := &AssertStruct{
		S: &InternalAssertStruct{
			AStruct: AStruct{
				a: make([]int, 10240),
			},
		},
	}
	internaleFunc(s).Show()
}
