# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :futaba,
  ecto_repos: [Futaba.Repo]

# Configures the endpoint
config :futaba, FutabaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "He7kaOntG5BxIga1r0QC/oGcSnO0XFFjUDkyPt8Eo+Ws9xuQyroBJCeYjvMzeuN6",
  render_errors: [view: FutabaWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Futaba.PubSub,
  live_view: [signing_salt: "y+uyzYDE"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
