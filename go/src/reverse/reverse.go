package reverse

// https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#07---reverse-a-string-code

// Iterate :
func Iterate(word string) string {
	var res string
	for _, w := range word {
		res = string(w) + res
	}
	return res
}
