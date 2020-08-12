defmodule KsTailwind.Repo do
  use Ecto.Repo,
    otp_app: :ks_tailwind,
    adapter: Ecto.Adapters.Postgres
end
