defmodule FizzBuzzTest do

  use ExUnit.Case, async: true # tracing is enabled, so only one task is running at any given moment
  doctest FizzBuzz

  defp get_random_test_value(divisor), do: :rand.uniform(9999999) * divisor
  defp get_random_test_value(), do: :rand.uniform(9999999)

  test "concats two lists properly" do
    assert Exercise.list_concat [:a, :b], [:c, :d] == [:a, :b, :c, :d]
  end

  test "returns a correct value for 15-divisible entry" do
    test_input = 15
      |> get_random_test_value
      |> FizzBuzz.get_single_value

    assert test_input ==  "FizzBuzz"

    test_input = get_random_test_value(15) + 1
      |> get_random_test_value
      |> FizzBuzz.get_single_value

    refute test_input ==  "FizzBuzz"
  end

  test "returns a correct value for 5-divisible entry" do
    test_input = 5
      |> get_random_test_value
      |> FizzBuzz.get_single_value

    assert test_input ==  "Buzz"

    test_input = get_random_test_value(5) + 1
      |> get_random_test_value
      |> FizzBuzz.get_single_value

    refute test_input ==  "Buzz"
  end

  test "returns a correct value for 3-divisible entry" do
    test_input = 3
      |> get_random_test_value
      |> FizzBuzz.get_single_value

    assert test_input ==  "Fizz"

    test_input = get_random_test_value(3) + 1
      |> get_random_test_value
      |> FizzBuzz.get_single_value

    refute test_input ==  "Fizz"
  end

  test "returns a correct value for entry non divisible by 3 and/or 5 " do
    test_input = get_random_test_value()

    test_input =
      case test_input do
        test_input when rem(test_input, 5) == 0 -> test_input + 1
        test_input when rem(test_input, 3) == 0 -> test_input + 1
        _ -> test_input
      end

    assert test_input == FizzBuzz.get_single_value test_input
  end

end
