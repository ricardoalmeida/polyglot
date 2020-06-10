package dectobase

import (
	"fmt"
	"strconv"
	"strings"
)

// Iterate :
func Iterate(dec, base int) string {
	const charset = "0123456789ABCDEF"
	var result string
	for dec > 0 {
		result = fmt.Sprintf("%c%v", charset[dec%base], result)
		dec /= base
	}
	return result
}

// Recursive :
func Recursive(dec, base int) string {
	var result string
	if div := dec / base; div > 0 {
		result = Recursive(div, base)
	}
	return fmt.Sprintf("%v%X", result, dec%base)
}

// Std :
func Std(dec, base int) string {
	return strings.ToUpper(strconv.FormatInt(int64(dec), base))
}
