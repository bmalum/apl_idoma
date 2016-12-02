# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :apl_idoma,
  ecto_repos: [AplIdoma.Repo]

# Configures the endpoint
config :apl_idoma, AplIdoma.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YAgX1NDaqcJ8FdeHhopGynBFYhzSd4TqQXcAipAGeG2zI3xLBPFPaRpGaUzzzUxh",
  render_errors: [view: AplIdoma.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AplIdoma.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
