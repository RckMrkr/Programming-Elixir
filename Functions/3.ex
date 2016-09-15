defmodule FizzBuzz do
	import FizzBuzzChecker, only: [checkForZero: 3]

	def run(n), do: checkForZero(rem(n, 3), rem(n, 5), n)
end