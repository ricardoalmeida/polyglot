defmodule Dectobase.DecToBase do
  def pattern_match(num, base) when div(num, base) == 0 do
    chat_at(rem(num, base))
  end

  def pattern_match(num, base) do
    pattern_match(div(num, base), base) <> chat_at(rem(num, base))
  end

  defp chat_at(pos) do
    String.at("0123456789ABCDEF", pos)
  end

  def std(num, base) do
    Integer.to_string(num, base)
  end
end
