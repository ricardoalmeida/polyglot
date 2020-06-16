package findtwothatsum

// FindTwoThatSum :
func FindTwoThatSum(numbers []int, sum int) (int, int) {
	for i, first := range numbers {
		for j, second := range numbers {
			if j <= i {
				continue
			}
			if first+second == sum {
				return i, j
			}
		}
	}
	return -1, -1
}
