import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :slot_sample, SlotSampleWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "9H979nRAHLemZKs88uftNW+gdc4UW8DtsnTpZK1V3jXSD4a+2KkS06/LE1Tq+CUK",
  server: false

# In test we don't send emails.
config :slot_sample, SlotSample.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
