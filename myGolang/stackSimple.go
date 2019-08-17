package main

import "fmt"

type stack []int

func main() {

	s := make(stack,0)
	s = s.push(1)
	s = s.push(2)
	s = s.push(3)

	s, p := s.pop()
	fmt.Println(p)

	s, p = s.pop()
	fmt.Println(p)
}


func (s stack) push(num int) stack {
	return append(s, num)
}

func (s stack) pop() (stack, int) {
	l := len(s)
	return s[:l-1], s[l-1]
}