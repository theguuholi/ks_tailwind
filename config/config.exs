# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ks_tailwind,
  ecto_repos: [KsTailwind.Repo]

# Configures the endpoint
config :ks_tailwind, KsTailwindWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "v8T7V4tT/E8UJhOyoqth1czzTyMPfsG+4hBSHsDzf68LutSX9vjBtStK+0ZuNcj8",
  render_errors: [view: KsTailwindWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: KsTailwind.PubSub,
  live_view: [signing_salt: "cMF9VOez"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :stripity_stripe, api_key: "sk_test_RC9G1gDZzpwPWXAn9oYOOSoO00ND2SGOmB"
