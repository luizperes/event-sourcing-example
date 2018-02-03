defmodule EventSourcingExample.Mixfile do
  use Mix.Project

  def project do
    [
      app: :event_sourcing_example,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {EventSourcingExample, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:amnesia, "~> 0.2.7"},
      {:ok, "~> 1.9"},
      {:secure_random, "~> 0.5"}
    ]
  end
end
