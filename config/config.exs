# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :logic_gates,
  ecto_repos: [LogicGates.Repo]

# Configures the endpoint
config :logic_gates, LogicGatesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WE38YVPYd8polXbM7HpFKIwPi3pWUSe54mdr0sob/EqitykeqMfMc5gDbfEKncNi",
  render_errors: [view: LogicGatesWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LogicGates.PubSub,
  live_view: [signing_salt: "d4iny2eM"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
