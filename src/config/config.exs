# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :homehistory,
  ecto_repos: [Homehistory.Repo]

# Configures the endpoint
config :homehistory, HomehistoryWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BvDitIbeuZakMh8hO+FIbppL0XyteJ8NEpTR/zoxzZ5LGU8rGPQeGdBa8P61xMZ2",
  render_errors: [view: HomehistoryWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Homehistory.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
