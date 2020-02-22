# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :template,
  ecto_repos: [Template.Repo]

# Configures the endpoint
config :template, TemplateWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xhPYWsZGuHGgXkzGV6gQr9hojj1RXgIE3X9V/W04bfMBbt7IdFY21wGgit1WSCts",
  render_errors: [view: TemplateWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Template.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "1tcoLokn"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
