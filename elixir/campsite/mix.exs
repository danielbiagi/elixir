defmodule Campsite.MixProject do
  use Mix.Project

  def project do
    [
      app: :campsite,
      version: "0.1.0",
      # elixir: "~> 1.9",
      elixir: "~> 1.5.3",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Campsite.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, "~> 1.0.0"}
    ]
  end
end
