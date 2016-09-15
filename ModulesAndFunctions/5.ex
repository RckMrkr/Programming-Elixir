defmodule Gcd do
	
	def run(x, 0), do: x
	def run(x, y), do: run(y, rem(x, y))
end