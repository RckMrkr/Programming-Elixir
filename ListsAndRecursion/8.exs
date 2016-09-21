defmodule Tax do
	
	defp getTotal(tax_rates, order) do
		destination = Keyword.get(order, :ship_to)
		tax = Keyword.get(tax_rates, destination, 0)
		(1 + tax) * Keyword.get(order, :net_amount)
	end

	def calculate(tax_rates, orders) do
		for order <- orders do
			total = getTotal(tax_rates, order)
			Keyword.put(order, :total_amount, total)
		end
	end
end

# Something doesn't feel right about this one.