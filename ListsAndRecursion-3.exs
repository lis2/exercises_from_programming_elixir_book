defmodule Rec do
  def caesar([], _n), do: []
  def caesar([head|tail], n) when head + n < ?z, do: [head + n | caesar(tail, n)]
  def caesar([head|tail], n) when head + n >= ?z, do: [head + n - 26 | caesar(tail, n)] 
end

IO.puts Rec.caesar('ryvkve', 13)
