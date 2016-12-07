use Mix.Config

config :ecto_mnesia,
  host: {:system, :atom, "MNESIA_HOST", Kernel.node()},
  dir: {:system, "MNESIA_DATA_DIR", "priv/data/mnesia"},
  storage_type: {:system, :atom, "MNESIA_STORAGE_TYPE", :disc_copies}

config :naked_mnesia,
  ecto_repos: [Nakedmnesia.Repo]

config :naked_mnesia, Nakedmnesia.Repo,
  adapter: Ecto.Adapters.Mnesia
