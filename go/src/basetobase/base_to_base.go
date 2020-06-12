package basetobase

// https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#11---any-base-to-any-base-code

// BaseToBase :
func BaseToBase(value string, base, newBase int) string {
	return DecToBaseIterate(BaseToDecIterate(value, base), newBase)
}
