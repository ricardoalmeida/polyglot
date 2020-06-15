defmodule Polyglot.BaseToBaseTest do
  use ExUnit.Case
  alias Polyglot.BaseToBase

  setup do
    [
      tests: [
        {"E", 16, 2, "1110"},
        {"11011110101011011011111011101111", 2, 3, "100122100210211112102"},
        {"3735928559", 10, 4, "3132223123323233"},
        {"8831A383B", 12, 16, "DEADBEEF"}
      ]
    ]
  end

  describe "base_to_base" do
    test "converts any base other base", %{tests: tests} do
      for {value, base, new_base, want} <- tests do
        assert BaseToBase.base_to_base(value, base, new_base) == want
      end
    end
  end
end
