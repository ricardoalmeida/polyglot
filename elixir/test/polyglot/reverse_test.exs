defmodule Polyglot.ReverseTest do
  use ExUnit.Case, async: true
  alias Polyglot.Reverse

  setup do
    [
      tests: [
        {"cat", "tac"},
        {"alphabet", "tebahpla"},
        {"日本語", "語本日"}
      ]
    ]
  end

  describe "pattern_match" do
    test "reverse word", %{tests: tests} do
      for {word, want} <- tests do
        assert Reverse.pattern_match(word) == want
      end
    end
  end

  describe "std" do
    test "reverse word", %{tests: tests} do
      for {word, want} <- tests do
        assert Reverse.std(word) == want
      end
    end
  end
end
