# https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#07---reverse-a-string-code

defmodule Polyglot.Reverse do
  def pattern_match(""), do: ""

  def pattern_match(word) do
    {head, tail} = String.next_codepoint(word)
    pattern_match(tail) <> head
  end

  def std(word) do
    String.reverse(word)
  end
end
