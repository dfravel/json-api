# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :json_api,
  ecto_repos: [JsonApi.Repo]

# Configures the endpoint
config :json_api, JsonApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "E1uxDQDgye5HRKV/KyK4UIuxas6+solIm/3acvmzDu7lQjAKnIp93h3t12Cvn1jx",
  render_errors: [view: JsonApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: JsonApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :mime, :types, %{
  "application/vnd.api+json" => ["json-api"]
}  

config :phoenix, :format_encoders, 
  "json-api": Poison

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
