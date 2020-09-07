defmodule LogicGates.Repo do
  use Ecto.Repo,
    otp_app: :logic_gates,
    adapter: Ecto.Adapters.Postgres
end
