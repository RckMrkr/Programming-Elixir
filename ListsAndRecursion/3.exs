defmodule MyList do
	@min_ascii 97
	@ascii_size 26

	defp transform(n, c), do: rem(n + c - @min_ascii, @ascii_size) + @min_ascii

	def caesar([], _), do: []
	def caesar([head|tail], c), do: [transform(head, c)|caesar(tail, c)]
end