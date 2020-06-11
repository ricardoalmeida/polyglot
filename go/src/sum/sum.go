package sum

// https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#06---sum-all-the-numbers-in-a-list-code

// Iterate :
func Iterate(numbers []int) int {
	result := 0
	for _, n := range numbers {
		result += n
	}
	return result
}

// Recursive :
func Recursive(numbers []int) int {
	if len(numbers) == 0 {
		return 0
	}
	return numbers[0] + Recursive(numbers[1:])
}
