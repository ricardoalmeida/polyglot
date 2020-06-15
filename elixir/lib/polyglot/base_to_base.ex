defmodule Polyglot.BaseToBase do
  alias Polyglot.DecToBase
  alias Polyglot.BaseToDec

  def base_to_base(value, base, new_base) do
    DecToBase.pattern_match(BaseToDec.pattern_match(value, base), new_base)
  end
end
