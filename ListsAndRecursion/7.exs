defmodule Primes do
	import MyList, only: [span: 2]

	defp _isPrime(n, 1), do: true
	defp _isPrime(n, test) when rem(n, test) == 0, do: false
	defp _isPrime(n, test), do: _isPrime(n, test - 1)
	defp isPrime(n), do: _isPrime(n, div(n, 2))

	def allUpTo(n) do
		for x <- span(2, n), isPrime(x), do: x
	end
end