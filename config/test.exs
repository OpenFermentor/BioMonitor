use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :bio_monitor, BioMonitor.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :bio_monitor, BioMonitor.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "bio_monitor_cloud_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# Turn down encription to make tests faster
config :comeonin, :bycript_log_rounds, 4
config :comeonin, :pbkdf2_rounds, 1
