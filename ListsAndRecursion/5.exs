defmodule MyEnum do
	
	def all?(list, fun \\ fn x -> x end)
	def all?([], _), do: true
	def all?([head|tail], fun) do
		fun.(head) && all?(tail)
	end

	def each([], _), do: :ok
	def each([head|tail], fun) do
		fun.(head)
		each(tail, fun)
	end

	def filter(list, fun \\ fn x -> x end)
	def filter([], _), do: []
	def filter([head|tail], fun) do
		if(fun.(head)) do
			[head|filter(tail, fun)]
		else
			filter(tail, fun)
		end
	end

	def split(enumerable, count) when count < 0 do
		count = enumerable
			|> length
			|> (&(&1 + count)).()
			|> max(0)
		split(enumerable, count)
	end
	def split(enumerable, count) do
		first = take(enumerable, count)
		{ first, enumerable -- first }
	end

	defp _reverse([], acc), do: acc
	defp _reverse([head|tail], acc), do: _reverse(tail, [head|acc])
	defp reverse(enumerable), do: _reverse(enumerable, [])
	
	def take(_, 0), do: []
	def take([], _), do: []
	def take(list, count) when count < 0 do
		list
		|> reverse
		|> take(count * -1)
		|> reverse
	end
	def take([head|tail], count) do
		[head|take(tail, count - 1)]
	end
end