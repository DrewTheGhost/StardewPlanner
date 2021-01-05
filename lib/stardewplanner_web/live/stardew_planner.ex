defmodule StardewplannerWeb.StardewPlanner do
  use StardewplannerWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :test, 10)}
  end

  def render(assigns) do
    ~L"""
    <h1>Test Value</h1>
    <%= @test %>
    """
  end
end
