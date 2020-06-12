package basetobase

// https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#09---decimal-to-another-base-code

import (
	"fmt"
	"strconv"
	"strings"
)

// DecToBaseIterate :
func DecToBaseIterate(dec, base int) string {
	const charset = "0123456789ABCDEF"
	var result string
	for dec > 0 {
		result = fmt.Sprintf("%c%v", charset[dec%base], result)
		dec /= base
	}
	return result
}

// DecToBaseRecursive :
func DecToBaseRecursive(dec, base int) string {
	var result string
	if div := dec / base; div > 0 {
		result = DecToBaseRecursive(div, base)
	}
	return fmt.Sprintf("%v%X", result, dec%base)
}

// DecToBaseStd :
func DecToBaseStd(dec, base int) string {
	return strings.ToUpper(strconv.FormatInt(int64(dec), base))
}
