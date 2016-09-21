defmodule MyStrings do
	@lowest_ascii 32
	@highest_ascii 126

	defp isAscii(n) when n > @highest_ascii, do: false
	defp isAscii(n) when n < @lowest_ascii, do: false
	defp isAscii(_), do: true

	def isPrintable(list), do: Enum.all?(list, &isAscii/1)
end