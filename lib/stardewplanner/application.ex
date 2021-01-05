defmodule StardewPlanner.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      StardewPlanner.Repo,
      # Start the Telemetry supervisor
      StardewPlannerWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: StardewPlanner.PubSub},
      # Start the Endpoint (http/https)
      StardewPlannerWeb.Endpoint
      # Start a worker by calling: StardewPlanner.Worker.start_link(arg)
      # {StardewPlanner.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: StardewPlanner.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    StardewPlannerWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
