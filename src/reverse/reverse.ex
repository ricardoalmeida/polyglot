defmodule Reverse.Reverse do
  def pattern_match(""), do: ""

  def pattern_match(word) do
    <<head::binary-size(1), rest::binary>> = word
    pattern_match(to_string(rest)) <> to_string(head)
  end

  def std(word) do
    String.reverse(word)
  end
end
