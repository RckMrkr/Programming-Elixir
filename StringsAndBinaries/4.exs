defmodule TextCalc do
	# In the exercise description a space is present
	# between the numbers and the operator.
	# I'll be utilizing that space
	
	@ascii_space 32

	defp _operate('+', first, second), do: first + second
	defp _operate('-', first, second), do: first - second
	defp _operate('*', first, second), do: first * second
	defp _operate('/', first, second), do: first / second
	defp operate([first, operator, second]) do
		_operate(operator, List.to_integer(first), List.to_integer(second))
	end

	defp _getToSpace([], akk), do: {akk, []} 
	defp _getToSpace([@ascii_space|tail], akk), do: {akk, tail}
	defp _getToSpace([head|tail], akk), do: _getToSpace(tail, [head|akk])
	defp getToSpace(input) do
		{reversedToSpace, afterSpace} = _getToSpace(input, [])
		{Enum.reverse(reversedToSpace), afterSpace}
	end

	defp splitAtSpaces([]), do: []
	defp splitAtSpaces(input) do
		{first, remaining} = getToSpace(input)
		[first|splitAtSpaces(remaining)]
	end

	def calculate(input) do
		input
		|> splitAtSpaces
		|> operate
	end
end