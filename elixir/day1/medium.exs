defmodule Recursive do
	def list_size([]) do
		0
	end
	def list_size(list) do
		[_ | remaining_list] = list
		1 + list_size(remaining_list)
	end


	def max_value([]) do
		nil
	end
	def max_value(list) do
		[max | rest] = list
		max_value(rest, max)
	end
	defp max_value([], max) do
		max
	end
	defp max_value(list, max) do
		[first | rest] = list 
		if first > max do
			max_value(rest, first)
		else 
			max_value(rest, max)
		end
	end
end

IO.puts "Testing max_value function."
IO.puts Recursive.max_value([])
IO.puts Recursive.max_value([4])
IO.puts Recursive.max_value([1, 4, 14, 2])
