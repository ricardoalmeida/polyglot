package numinlist

// Iterate will return true if num is in the
// list slice, and false otherwise.
func Iterate(list []int, num int) bool {
	for _, n := range list {
		if n == num {
			return true
		}
	}
	return false
}
