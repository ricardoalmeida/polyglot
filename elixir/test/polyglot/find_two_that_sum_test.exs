defmodule Polyglot.FindTwoThatSumTest do
  use ExUnit.Case, async: true
  alias Polyglot.FindTwoThatSum

  setup do
    [
      tests: [
        {[1, 2, 3, 4], 7, true},
        {[0, -1, 1], 0, true},
        {[0, 1, 1], 0, false},
        {[10, 1, 12, 3, 7, 2, 2, 1], 4, true}
      ]
    ]
  end

  describe "iterate" do
    test "find two that sum", %{tests: tests} do
      for {numbers, sum, possible} <- tests do
        {i, j} = FindTwoThatSum.iterate(numbers, sum)

        if possible do
          assert(sum == Enum.at(numbers, i) + Enum.at(numbers, j))
        else
          assert({i, j} == {-1, -1})
        end
      end
    end
  end
end
