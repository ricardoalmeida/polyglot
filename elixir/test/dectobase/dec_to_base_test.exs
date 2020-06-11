defmodule Dectobase.DecToBaseTest do
  use ExUnit.Case, async: true
  alias Dectobase.DecToBase

  setup do
    [
      tests: [
        {1, 2, "1"},
        {2, 2, "10"},
        {7, 3, "21"},
        {14, 2, "1110"},
        {14, 16, "E"},
        {17, 16, "11"},
        {3_735_928_559, 2, "11011110101011011011111011101111"},
        {3_735_928_559, 3, "100122100210211112102"},
        {3_735_928_559, 4, "3132223123323233"},
        {3_735_928_559, 5, "30122344203214"},
        {3_735_928_559, 6, "1414413525315"},
        {3_735_928_559, 7, "161402603666"},
        {3_735_928_559, 8, "33653337357"},
        {3_735_928_559, 9, "10570724472"},
        {3_735_928_559, 10, "3735928559"},
        {3_735_928_559, 11, "164791A470"},
        {3_735_928_559, 12, "8831A383B"},
        {3_735_928_559, 13, "476CC321C"},
        {3_735_928_559, 14, "276253DDD"},
        {3_735_928_559, 15, "16CEB1BDE"},
        {3_735_928_559, 16, "DEADBEEF"}
      ]
    ]
  end

  describe "pattern_match" do
    test "returns a decimal in another base", %{tests: tests} do
      for {num, base, want} <- tests do
        assert DecToBase.pattern_match(num, base) == want
      end
    end
  end

  describe "std" do
    test "returns a decimal in another base", %{tests: tests} do
      for {num, base, want} <- tests do
        assert DecToBase.std(num, base) == want
      end
    end
  end
end
