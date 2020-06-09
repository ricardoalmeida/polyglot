# frozen_string_literal: true

# FizzBuzz :
class FizzBuzz
  def self.iterate(num)
    res = ''
    (1..num).each do |n|
      res += fizz_buzz(n)
      res += ', ' if n != num
    end
    res += "\n"
  end

  def self.fizz_buzz(num)
    if (num % 15).zero?
      'Fizz Buzz'
    elsif (num % 3).zero?
      'Fizz'
    elsif (num % 5).zero?
      'Buzz'
    else
      num.to_s
    end
  end
end
