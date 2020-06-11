package fizzbuzz

// https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#08---fizzbuzz-code

import (
	"fmt"
)

// Iterative :
func Iterative(num int) {
	for i := 1; i <= num; i++ {
		switch {
		case i%3 == 0 && i%5 == 0:
			fmt.Print("Fizz Buzz")
		case i%3 == 0:
			fmt.Print("Fizz")
		case i%5 == 0:
			fmt.Print("Buzz")
		default:
			fmt.Print(i)
		}
		if i != num {
			fmt.Print(", ")
		}
	}
	fmt.Println()
}
