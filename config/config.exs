# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :pipsqueak,
  ecto_repos: [Pipsqueak.Repo]

# Configures the endpoint
config :pipsqueak, PipsqueakWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eJ9XsgWzdBED7D5jGyvf++t9aJ50Q3/WmdsVTAPmsBxflSplPGi7ssiJqM9GMGm7",
  render_errors: [view: PipsqueakWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Pipsqueak.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
