package numinlist

// https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#05---determine-if-a-number-is-in-a-list-code

// Iterate :
func Iterate(list []int, num int) bool {
	for _, n := range list {
		if n == num {
			return true
		}
	}
	return false
}
