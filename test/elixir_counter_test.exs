defmodule ElixirCounterTest do
  use ExUnit.Case
  doctest ElixirCounter

  test "count up" do
    assert ElixirCounter.Server.counter == {:ok, 0}

    ElixirCounter.Server.count!

    assert ElixirCounter.Server.counter == {:ok, 1}

    ElixirCounter.Server.count!

    assert ElixirCounter.Server.counter == {:ok, 2}
  end
end
