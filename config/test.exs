use Mix.Config

config :event_sourcing_example, EventSourcingExample,
  recover_previous_state: false

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :event_sourcing_example, EventSourcingExampleWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
