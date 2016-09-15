defmodule Sum do
	
	def run(0), do: 0
	def run(n) when n > 0, do: n + run(n-1)
end