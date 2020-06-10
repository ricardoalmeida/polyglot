package dectobase

import "fmt"

// Iterate :
func Iterate(dec, base int) string {
	var result string
	for dec > 0 {
		result = fmt.Sprintf("%v%s", charset(dec%base), result)
		dec /= base
	}
	return result
}

// Recursive :
func Recursive(dec, base int) string {
	rem := charset(dec % base)
	if dec/base == 0 {
		return rem
	}
	return fmt.Sprintf("%v%v", Recursive(dec/base, base), rem)
}

func charset(num int) string {
	const charset = "0123456789ABCDEF"
	return string(charset[num])
}
