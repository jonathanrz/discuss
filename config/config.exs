# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, Discuss.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DNcOGZnXuv7X5HChi+gNiipG1mBahzInmxYxDHtTlImilxTh2Km5M0hEjx5NJgDL",
  render_errors: [view: Discuss.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :ueberauth, Ueberauth, providers: [github: {Ueberauth.Strategy.Github, []}]

config :ueberauth, Ueberauth.Strategy.Github.OAuth,
  client_id: "ad0b88a5358385b6ac90",
  client_secret: "ca6d0e28503b69314db73a17190c024a2d13ebc0"
