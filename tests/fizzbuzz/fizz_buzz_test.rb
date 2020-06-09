# frozen_string_literal: true

require 'test_helper'
require 'fizzbuzz/fizz_buzz'

describe FizzBuzz do
  def setup
    @tests = [
      { num: 1, want: "1\n" },
      { num: 2, want: "1, 2\n" },
      { num: 3, want: "1, 2, Fizz\n" },
      { num: 4, want: "1, 2, Fizz, 4\n" },
      { num: 5, want: "1, 2, Fizz, 4, Buzz\n" },
      { num: 6, want: "1, 2, Fizz, 4, Buzz, Fizz\n" },
      { num: 7, want: "1, 2, Fizz, 4, Buzz, Fizz, 7\n" },
      { num: 8, want: "1, 2, Fizz, 4, Buzz, Fizz, 7, 8\n" },
      { num: 9, want: "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz\n" },
      { num: 10, want: "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz\n" },
      { num: 11, want: "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11\n" },
      { num: 12, want: "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz\n" },
      {
        num: 13,
        want: "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13\n"
      },
      {
        num: 14,
        want: "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14\n"
      },
      {
        num: 15,
        want:
          "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz\n"
      },
      {
        num: 16,
        want:
          "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz, 16\n"
      },
      {
        num: 17,
        want:
          "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz, 16, 17\n"
      },
      {
        num: 18,
        want:
          "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz, 16, 17, Fizz\n"
      },
      {
        num: 19,
        want:
          "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz, 16, 17, Fizz, 19\n"
      },
      {
        num: 20,
        want:
          "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz, 16, 17, Fizz, 19, Buzz\n"
      }
    ]
  end

  describe '.iterate' do
    it 'returns fizz buzz' do
      @tests.each do |tc|
        _(FizzBuzz.iterate(tc[:num])).must_equal tc[:want]
      end
    end
  end
end
