defmodule NakedMnesia.Mixfile do
  use Mix.Project

  def project do
    [app: :naked_mnesia,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     aliases: aliases()]
  end

  def application do
    [applications: [:logger, :ecto, :ecto_mnesia],
     mod: {NakedMnesia, []}]
  end

  defp deps do
    [
      {:ecto, "~> 2.1.0-rc.4"},
      {:ecto_mnesia, "~> 0.6.0"}
    ]
  end

  defp aliases do
    ["ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
     "ecto.reset": ["ecto.drop", "ecto.setup"],
     "test":       ["ecto.create --quiet", "ecto.migrate", "test"]]
  end
end
