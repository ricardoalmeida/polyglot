defmodule Fizzbuzz.FizzBuzzTest do
  use ExUnit.Case, async: true
  alias Fizzbuzz.FizzBuzz

  setup do
    [
      tests: [
        [1, "1\n"],
        [2, "1, 2\n"],
        [3, "1, 2, Fizz\n"],
        [4, "1, 2, Fizz, 4\n"],
        [5, "1, 2, Fizz, 4, Buzz\n"],
        [6, "1, 2, Fizz, 4, Buzz, Fizz\n"],
        [7, "1, 2, Fizz, 4, Buzz, Fizz, 7\n"],
        [8, "1, 2, Fizz, 4, Buzz, Fizz, 7, 8\n"],
        [9, "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz\n"],
        [10, "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz\n"],
        [11, "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11\n"],
        [12, "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz\n"],
        [13, "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13\n"],
        [14, "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14\n"],
        [15, "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz\n"],
        [16, "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz, 16\n"],
        [
          17,
          "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz, 16, 17\n"
        ],
        [
          18,
          "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz, 16, 17, Fizz\n"
        ],
        [
          19,
          "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz, 16, 17, Fizz, 19\n"
        ],
        [
          20,
          "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz, 16, 17, Fizz, 19, Buzz\n"
        ]
      ]
    ]
  end

  describe "pattern_match" do
    test "returns fizz buzz", %{tests: tests} do
      for [num, want] <- tests do
        assert FizzBuzz.pattern_match(num) == want
      end
    end
  end
end
