Code.require_file("src/numinlist/num_in_list.ex")

defmodule Numinlist.NumInListTest do
  use ExUnit.Case, async: true
  alias Numinlist.NumInList

  setup do
    [
      tests: [
        {[1, 2, 3, 4, 5], 1, true},
        {[1, 2, 3, 4, 5], 3, true},
        {[1, 2, 3, 4, 5], 5, true},
        {[1, 2, 3, 4, 5], 0, false},
        {[1, 2, 3, 4, -1], -1, true},
        {[-1, -1, -1, -1, -1, -1, -1, -1], -1, true},
        {[-1, -1, -1, -1, -1, -1, -1, -1], 1, false}
      ]
    ]
  end

  describe "#pattern_match" do
    test "finds number in list", %{tests: tests} do
      for {list, num, want} <- tests do
        assert NumInList.pattern_match(list, num) == want
      end
    end
  end

  describe "std" do
    test "finds number in list", %{tests: tests} do
      for {list, num, want} <- tests do
        assert NumInList.std(list, num) == want
      end
    end
  end
end
