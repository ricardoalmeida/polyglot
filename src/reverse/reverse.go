package reverse

// Iterate :
func Iterate(word string) string {
	var res string
	for _, w := range word {
		res = string(w) + res
	}
	return res
}
