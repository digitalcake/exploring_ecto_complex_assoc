# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :exploring_ecto_complex_assoc,
  ecto_repos: [ExploringEctoComplexAssoc.Repo]

# Configures the endpoint
config :exploring_ecto_complex_assoc, ExploringEctoComplexAssocWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rvW2eqX7WVutLxNurzEATo+6w3JE0dpJwTWVi0kmE0LY4Fn0wrUuLlOjHM4c5aBx",
  render_errors: [view: ExploringEctoComplexAssocWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ExploringEctoComplexAssoc.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
