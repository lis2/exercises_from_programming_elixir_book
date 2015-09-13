defmodule Rec do
  def max(list), do: _max(list, -9999)
  def _max([], value), do: value
  def _max([head|tail], value) when head > value, do: _max(tail, head)
  def _max([head|tail], value) when head < value, do: _max(tail, value)
end

IO.puts Rec.max([2,3,4,8,10,3,5])
