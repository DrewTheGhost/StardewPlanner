# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :stardewplanner,
  ecto_repos: [Stardewplanner.Repo]

# Configures the endpoint
config :stardewplanner, StardewplannerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/BZ7WKritoy3nOVx21I6ZVMsU7vccvUdmZ65qUbFI0VmFxFlA5florzcK0+dfN9R",
  render_errors: [view: StardewplannerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Stardewplanner.PubSub,
  live_view: [signing_salt: "QyaZ6lis"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
