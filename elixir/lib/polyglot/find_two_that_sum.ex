defmodule Polyglot.FindTwoThatSum do
  def iterate(numbers, sum) do
    res =
      for {first, i} <- Enum.with_index(numbers),
          {second, j} <- Enum.with_index(numbers),
          i < j,
          first + second == sum,
          do: {i, j}

    case List.first(res) do
      nil -> {-1, -1}
      x -> x
    end
  end
end
