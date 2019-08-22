package main

import "fmt"

func main() {
	b := *getPointerVal()
	fmt.Println("Val is : ", b)
}

func getPointerVal() (myPointer *int) {
	a := 234
	return &a
}
