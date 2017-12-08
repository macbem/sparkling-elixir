defmodule ExerciseTest do
  use ExUnit.Case, async: true # tracing is enabled, so only one task is running at any given moment
  doctest Exercise

  test "concats two lists properly" do
    assert Exercise.list_concat [:a, :b], [:c, :d] == [:a, :b, :c, :d]
  end

end
