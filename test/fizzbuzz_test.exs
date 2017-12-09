defmodule FizzBuzzTest do

  use ExUnit.Case, async: true
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

  test "returns a correct range list" do
    expected = [0, 1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]

    assert expected == FizzBuzz.get_range(0, 15)
  end
end
