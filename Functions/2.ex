defmodule FizzBuzzChecker do

	def checkForZero(0, 0, _), do: "FizzBuzz"
	def checkForZero(0, _, _), do: "Fizz"
	def checkForZero(_, 0, _), do: "Buzz"
	def checkForZero(_, _, n), do: n

end