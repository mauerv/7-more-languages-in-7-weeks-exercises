defmodule Recursive do
	def list_size([]), do: 0
	def list_size(list) do
		[_ | remaining_list] = list
		1 + list_size(remaining_list)
	end

	def max_value([]), do: nil
	def max_value(list) do
		[max | rest] = list
		max_value(rest, max)
	end
	defp max_value([], max), do: max
	defp max_value(list, max) do
		[first | rest] = list 
		if first > max do
			max_value(rest, first)
		else 
			max_value(rest, max)
		end
	end

	def min_value([]), do: nil
	def min_value(list) do
		[min | rest] = list
		min_value(rest, min)
	end
	defp min_value([], min), do: min
	defp min_value(list, min) do
		[first | rest] = list 
		if first < min do
			min_value(rest, first)
		else 
			min_value(rest, min)
		end
	end
end

test_list1 = []
test_list2 = [4]
test_list3 = [-11, 4, 14, 2]

IO.puts "Testing list_size function" 
IO.puts "The list size of list #{inspect test_list1} is #{Recursive.list_size(test_list1)}"
IO.puts "The list size of list #{inspect test_list2} is #{Recursive.list_size(test_list2)}"
IO.puts "The list size of list #{inspect test_list3} is #{Recursive.list_size(test_list3)}"

IO.puts "Testing max_value function."
IO.puts "The max value in list #{inspect test_list1} is #{Recursive.max_value(test_list1)}"
IO.puts "The max value in list #{inspect test_list2} is #{Recursive.max_value(test_list2)}"
IO.puts "The max value in list #{inspect test_list3} is #{Recursive.max_value(test_list3)}"

IO.puts "Testing min_value function."
IO.puts "The min value in list #{inspect test_list1} is #{Recursive.min_value(test_list1)}"
IO.puts "The min value in list #{inspect test_list2} is #{Recursive.min_value(test_list2)}"
IO.puts "The min value in list #{inspect test_list3} is #{Recursive.min_value(test_list3)}"
