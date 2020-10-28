defmodule Futaba.Repo do
  use Ecto.Repo,
    otp_app: :futaba,
    adapter: Ecto.Adapters.Postgres
end
