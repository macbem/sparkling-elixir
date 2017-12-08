defmodule FizzBuzzTest do

  use ExUnit.Case, async: true # tracing is enabled, so only one task is running at any given moment
  doctest FizzBuzz

  test "concats two lists properly" do
    assert Exercise.list_concat [:a, :b], [:c, :d] == [:a, :b, :c, :d]
  end

  test "returns a correct value for 15-divisible entry" do
    assert FizzBuzz.get_single_value(15) ==  "FizzBuzz"

    refute FizzBuzz.get_single_value(15 + 1) == "FizzBuzz"
  end

  test "returns a correct value for 5-divisible entry" do
    assert FizzBuzz.get_single_value(5) == "Buzz"

    refute FizzBuzz.get_single_value(5 + 1) == "Buzz"
  end

  test "returns a correct value for 3-divisible entry" do
    assert FizzBuzz.get_single_value(3) == "Fizz"

    refute FizzBuzz.get_single_value(3 + 1) == "Fizz"
  end

  test "returns a correct value for entry non divisible by 3 and/or 5 " do
    assert 1 == FizzBuzz.get_single_value 1
  end

end
