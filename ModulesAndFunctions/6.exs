defmodule Chop do

	defp makeGuess(low..high) do
		value = div(high - low, 2) + low
		IO.puts "Is it #{value}?"
		value
	end

	defp getNewRange(trial, actual, low.._) when trial > actual, do: low..trial
	defp getNewRange(trial, _, _..high), do: trial..high

	defp _guess(actual, actual, _), do: IO.puts "Yes, it's #{actual}"
	defp _guess(actual, trial, range) do
		range = getNewRange(trial, actual, range)
		trial = makeGuess(range)
		_guess(actual, trial, range)
	end

	def guess(actual, range) do
		_guess(actual, makeGuess(range), range)
	end
end