defmodule ElixirCounter.Server do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, 0, name: __MODULE__)
  end

  def init(counter) do
    {:ok, counter}
  end

  def count!(pid \\ __MODULE__) do
    GenServer.call(pid, {:count})
  end

  def counter(pid \\ __MODULE__) do
    GenServer.call(pid, {:counter})
  end

  def handle_call({:count}, _from, state) do
    {:reply, :ok, state + 1}
  end

  def handle_call({:counter}, _from, state) do
    {:reply, {:ok, state}, state}
  end
end
