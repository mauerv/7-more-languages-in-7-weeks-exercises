defmodule Recursive do
	def list_size([]) do
		0
	end
	def list_size(list) do
		[_ | remaining_list] = list
		1 + list_size(remaining_list)
	end
end
