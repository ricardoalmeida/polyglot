defmodule Polyglot.MixProject do
  use Mix.Project

  def project do
    [
      app: :polyglot,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps()
    ]
  end

  defp elixirc_paths(_), do: ["src"]

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:exmoji, "~> 0.2.2"}
    ]
  end
end
