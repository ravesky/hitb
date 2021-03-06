defmodule Block.Application do
  @moduledoc """
  The Block Application Service.

  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = []
    opts = [strategy: :one_for_one, name: Block.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
