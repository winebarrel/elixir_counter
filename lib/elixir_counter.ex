defmodule ElixirCounter do
  use Application

  def start(_typ, _args) do
    import Supervisor.Spec

    children = [
      worker(ElixirCounter.Server, [])
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
