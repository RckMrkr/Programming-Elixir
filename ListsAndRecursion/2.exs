defmodule MyList do
	
	def _max([], max), do: max
	def _max([head|tail], max) when max > head, do: _max(tail, max)
	def _max([head|tail], max), do: _max(tail, head)

	def max([head|tail]), do: _max(tail, head)
end