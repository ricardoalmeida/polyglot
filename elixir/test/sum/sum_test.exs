defmodule Sum.SumTest do
  use ExUnit.Case, async: true
  alias Sum.Sum

  setup do
    [
      tests: [
        {[1], 1},
        {[1, 2], 3},
        {[1, 2, 3, 4, 5], 15},
        {[], 0},
        {[-1, -1], -2},
        {[-1, -1, 0, 0, 0], -2},
        {[0, 0, 0], 0},
        {[-1, 0, 1], 0},
        {[1, 0, -1], 0},
        {[43, 67, 65, 42, 74, 95, 100, 21], 507},
        {[26, 26, 94, 55, 71, 57, 7, 72], 408},
        {[78, 11, 48, 91, 13, 26, 74, 99], 440},
        {[31, 96, 10, 55, 41, 13, 92, 5], 343},
        {[14, 39, 18, 39, 3, 29, 8, 29], 179},
        {[-95, -46, -65, -63, 10], -259}
      ]
    ]
  end

  describe "#pattern_match" do
    test "sum items of an array", %{tests: tests} do
      for {list, want} <- tests do
        assert Sum.pattern_match(list) == want
      end
    end
  end

  describe "#std" do
    test "sum items of an array", %{tests: tests} do
      for {list, want} <- tests do
        assert Sum.std(list) == want
      end
    end
  end
end
