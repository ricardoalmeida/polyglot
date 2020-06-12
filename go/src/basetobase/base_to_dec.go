package basetobase

import "fmt"

// https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#10---another-base-to-decimal-code

const charset = "0123456789ABCDEF"

// BaseToDecIterate :
func BaseToDecIterate(value string, base int) int {
	res := 0
	multiplier := 1
	for i := len(value) - 1; i >= 0; i-- {
		index := -1
		for j, char := range charset {
			if char == rune(value[i]) {
				index = j
				break
			}
		}
		if index < 0 {
			panic("something went wong!")
		}
		res += index * multiplier
		multiplier *= base
	}
	return res
}

// BaseToDecStd :
func BaseToDecStd(value string, base int) int {
	res := 0
	multiplier := 1
	for i := len(value) - 1; i >= 0; i-- {
		var val int
		fmt.Sscanf(string(value[i]), "%X", &val)
		res += multiplier * val
		multiplier *= base
	}
	return res
}
