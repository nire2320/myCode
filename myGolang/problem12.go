package main

import "fmt"

func main() {
	newRange := []int{1, 3, 5}
	message := mSteps_x(10, newRange)
	fmt.Println(message)
}

func mSteps(steps int) int {

	if steps == 0 || steps == 1 {
		return 1
	}

	return mSteps(steps-1) + mSteps(steps-2)	
}


func mSteps_x(steps int, mRange []int) int {
	if steps == 0 {
		return 1
	}
	nums := make([]int, steps+1)
	nums[0] = 1
	for i := 0; i < steps; i++  {
		total := 0
		for _, j := range mRange {
			if i - j >= 0 {
				total += nums[i-j]
			}
		}
		nums[i] = total
	}
	return nums[steps]
}



/*
N = 0
0

N = 1
1,0

N = 2
2,1,0
2,0

N = 3
3,2,1,0
3,2,0
3,1,0


N = 4
4,3,2,1,0
4,3,2,0
4,3,1,0
4,2,1,0
4,2,0


*/