defmodule Polyglot.BaseToDec do
  def pattern_match(value, base) do
    pattern_match(value, base, 1, String.length(value) - 1)
  end

  defp pattern_match(_, _, _, -1), do: 0

  defp pattern_match(value, base, multiplier, pos) do
    [{index, _}] = Regex.run(~r/#{String.at(value, pos)}/, "0123456789ABCDEF", return: :index)

    index * multiplier + pattern_match(value, base, multiplier * base, pos - 1)
  end
end
