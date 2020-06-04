package sum

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
