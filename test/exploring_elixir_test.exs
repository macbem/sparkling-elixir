defmodule ExploringElixirTest do
  use ExUnit.Case
  doctest ExploringElixir

  test "greets the world" do
    assert ExploringElixir.hello() == :world
  end
end
