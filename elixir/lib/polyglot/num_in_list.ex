# https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#05---determine-if-a-number-is-in-a-list-code

defmodule Polyglot.NumInList do
  def pattern_match(nil, _), do: false
  def pattern_match([], _), do: false

  def pattern_match(list, num) do
    [head | tail] = list
    head == num || pattern_match(tail, num)
  end

  def std(list, num) do
    Enum.member?(list, num)
  end
end
