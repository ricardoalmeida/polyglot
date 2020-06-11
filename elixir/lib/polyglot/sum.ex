# https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#06---sum-all-the-numbers-in-a-list-code

defmodule Polyglot.Sum do
  def pattern_match([]), do: 0

  def pattern_match(list) do
    [head | tail] = list
    head + pattern_match(tail)
  end

  def std(list) do
    Enum.sum(list)
  end
end
