defmodule Papaya.Repo do
  use Ecto.Repo,
    otp_app: :papaya,
    adapter: Ecto.Adapters.Postgres
end
