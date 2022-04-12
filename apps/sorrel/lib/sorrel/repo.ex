defmodule Sorrel.Repo do
  use Ecto.Repo,
    otp_app: :sorrel,
    adapter: Ecto.Adapters.Postgres
end
