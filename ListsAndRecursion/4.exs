defmodule MyList do

	def span(from, from), do: [from]
	def span(from, to), do: [from|span(from + 1, to)]
end