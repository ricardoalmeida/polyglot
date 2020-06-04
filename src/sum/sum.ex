defmodule Sum.Sum do
  def pattern_match([]), do: 0

  def pattern_match(list) do
    [head | tail] = list
    head + pattern_match(tail)
  end

  def std(list) do
    Enum.sum(list)
  end
end
