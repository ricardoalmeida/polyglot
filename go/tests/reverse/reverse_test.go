package reverse_test

import (
	"fmt"
	"github/ricardoalmeida/polyglot/go/src/reverse"
	"testing"
)

func TestIterate(t *testing.T) {
	for _, tc := range tests {
		t.Run(fmt.Sprintf("%v", tc.word), func(t *testing.T) {
			got := reverse.Iterate(tc.word)
			if got != tc.want {
				t.Fatalf("Iterate() = %v; want %v", got, tc.want)
			}
		})
	}
}

var tests = []struct {
	word string
	want string
}{
	{"cat", "tac"},
	{"alphabet", "tebahpla"},
	{"日本語", "語本日"},
}
