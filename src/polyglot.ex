defmodule Polyglot do
  @moduledoc """
  Documentation for `Polyglot`.
  """
  alias Exmoji.EmojiChar

  @doc """
  Hello Polyglot.

  ## Examples

      iex> Polyglot.hello()
      "In which language?"

  """
  def hello do
    [hi] =
      [:Hello, :Hallo, :Hi, :Olá, :Bonjour, :Hola, :Привет]
      |> Enum.take_random(1)

    hi
  end

  def hello_favorite_language do
    "#{hello()} #{language()}! #{greetings()}"
  end

  defp greetings do
    Exmoji.find_by_short_name("heart")
    |> Enum.take_random(3)
    |> Enum.map(fn m -> EmojiChar.render(m) end)
  end

  defp language, do: Enum.random([:Go, :"Elixir", :Ruby, :TypeScript, :Rust])
end
