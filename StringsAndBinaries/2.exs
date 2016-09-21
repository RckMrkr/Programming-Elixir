defmodule MyStrings do

	defp sortString(word), do: word |> String.codepoints |> Enum.sort
	def detectAnagram1(word1, word2), do: sortString(word1) == sortString(word2)

	defp _detectAnagram2(word1, word2), do: word1 -- word2 == word2 -- word1
	def detectAnagram2(word1, word2) do 
		_detectAnagram2(String.codepoints(word1), String.codepoints(word2))
	end

	# Couldn't decide which one to go for.
end