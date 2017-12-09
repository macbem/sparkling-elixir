defmodule FizzBuzz do

  @moduledoc """
    A module that contains fizz-buzz helpers.

    What's fizz-buzz?

    It's a simple programming task that checks the base programming knowledge. It takes a number (or a range) and it should print/return the following:
    - "Fizz" for values divisible by 3,
    - "Buzz" for values divisible by 5,
    - "FizzBuzz" for values divisible by both 3 and 5
    - the passed value if none of the above matches
  """

  defp exec(number) when rem(number, 15) == 0 and number !== 0, do: "FizzBuzz"
  defp exec(number) when rem(number, 5) == 0 and number !== 0, do: "Buzz"
  defp exec(number) when rem(number, 3) == 0 and number !== 0, do: "Fizz"
  defp exec(number), do: number

  defp range(start, finish) do
    Enum.map(start..finish, &(exec &1))
  end

  @doc """
    Prints a range of FizzBuzz cases, from `start` to `finish`, using the FizzBuzz.get_range function
  """
  def print_range(start, finish) do
    for entry <- range(start, finish), do: IO.puts entry
  end

  @doc """
    Gets a list of FizzBuzz values from a range

      iex> FizzBuzz.get_range(0, 15)
      [0, 1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]
  """
  def get_range(start, finish), do: range start, finish

  @doc """
    Gets a single FizzBuzz value from the argument

      iex> FizzBuzz.get_single_value(15)
      "FizzBuzz"
  """
  def get_single_value(number), do: exec number

end
