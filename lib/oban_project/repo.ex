defmodule ObanProject.Repo do
  use Ecto.Repo,
    otp_app: :oban_project,
    adapter: Ecto.Adapters.Postgres
end
