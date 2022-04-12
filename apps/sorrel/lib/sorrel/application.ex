defmodule Sorrel.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Sorrel.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Sorrel.PubSub}
      # Start a worker by calling: Sorrel.Worker.start_link(arg)
      # {Sorrel.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Sorrel.Supervisor)
  end
end
