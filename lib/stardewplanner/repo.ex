defmodule Stardewplanner.Repo do
  use Ecto.Repo,
    otp_app: :stardewplanner,
    adapter: Ecto.Adapters.Postgres
end
