package main

import "fmt"

func main() {
	
	fmt.Println(leonardo())
}

func leonardo() string {
	return donatello()
}

func donatello() string {
	return raphael()
}

func raphael() string {
	return michaelangelo()
}

func michaelangelo() string {
	return "Turtle Wakka"
}