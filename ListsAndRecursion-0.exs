defmodule Sum do
  def sum([]), do: 0
  def sum([head|tail]), do: head + sum(tail)
end

IO.puts Sum.sum([1,2,3,4])
