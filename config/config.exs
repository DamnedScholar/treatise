# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :treatise,
  ecto_repos: [Treatise.Repo]

# Configures the endpoint
config :treatise, TreatiseWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nt81QtROk/1MMK+9ipMY28I6mNuz9Ldf9wCIomThJiR4vrMT4ovXtTXBvmGDMxUv",
  render_errors: [view: TreatiseWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Treatise.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Configures the Guardian password hashing library
config :guardian, Guardian,
  issuer: "Treatise",
  ttl: { 3, :days },
  verify_issuer: true,
  secret_key: "7ZbUa+VZDkcrqQE6mmIRhenHKlUcJYjaRDmB755pvXbuJDveWQDJ0J50k0GiH5GV",
  serializer: Treatise.GuardianSerializer

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
