defmodule PhoenixMessenger.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_messenger,
    adapter: Ecto.Adapters.Postgres
end
