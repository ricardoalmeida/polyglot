defmodule Reverse.Reverse do
  def pattern_match(""), do: ""

  def pattern_match(word) do
    {head, tail} = String.next_codepoint(word)
    pattern_match(tail) <> head
  end

  def std(word) do
    String.reverse(word)
  end
end
