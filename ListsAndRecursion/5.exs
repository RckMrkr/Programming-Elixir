defmodule MyEnum do
	
	def all?([], _), do: true
	def all?([head|tail], fun \\ fn x -> x end) do
		fun.(head) && all?(tail)
	end

	def each([], _), do: :ok
	def each([head|tail], fun) do
		fun.(head)
		each(tail, fun)
	end

	def filter([], _), do: []
	def filter([head|tail], fun \\ fn x -> x end) do
		if(fun.(head)) do
			[head|filter(tail, fun)]
		else
			filter(tail, fun)
		end
	end

	def split(enumerable, count) do
		{ take(enumerable, count), take(enumerable, count - length(enumerable)) }
	end

	def take(_, 0), do: []
	def take([], _), do: []
	def take(list, count) when count < 0 do
		# Todo
	end
	def take([head|tail], count) do
		[head|take(tail, count - 1)]
	end

end