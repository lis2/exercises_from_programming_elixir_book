defmodule Rec do
  def mapsum([], _func), do: 0
  def mapsum([head|tail], func), do: func.(head) + mapsum(tail, func)
end

IO.puts Rec.mapsum([1,2,3], &(&1 * &1))
