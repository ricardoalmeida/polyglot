defmodule Fizzbuzz.FizzBuzz do
  def pattern_match(1), do: fizz_buzz(1) <> "\n"

  def pattern_match(num) do
    sep = ", "
    pattern_match(num - 1, sep) <> sep <> fizz_buzz(num) <> "\n"
  end

  defp pattern_match(1, _), do: fizz_buzz(1)

  defp pattern_match(num, sep) do
    pattern_match(num - 1, sep) <> sep <> fizz_buzz(num)
  end

  defp fizz_buzz(num) when rem(num, 15) == 0, do: "Fizz Buzz"
  defp fizz_buzz(num) when rem(num, 3) == 0, do: "Fizz"
  defp fizz_buzz(num) when rem(num, 5) == 0, do: "Buzz"
  defp fizz_buzz(num), do: to_string(num)
end
