defmodule MyEnum do
  def all?(list, func), do: _all?(list, func) 
  defp _all?([], _), do: true
  defp _all?([head|tail], func) do
    func.(head) and _all?(tail, func)
  end 

  def each(list, func), do: _each(list, func) 
  defp _each([], _), do: :ok
  defp _each([head|tail], func) do
    func.(head)
    _each(tail, func)
  end 

  def filter(list, func), do: _filter(list, func, []) 
  defp _filter([], _filter, result), do: result
  defp _filter([head | tail], func, result) do
    if func.(head) do
      result = [head | result]
    end
    _filter(tail, func, result)
  end 

  def take(list, number) do
    if number < 0 do
      _take(Enum.reverse(list), -number, []) |> Enum.reverse
    else
      _take(list, number, [])
    end
  end
  defp _take([], _number, result), do: result
  defp _take([head | tail], number, result) do
    if Enum.count(result) != number do
      result = [head | result]
      _take(tail, number, result)
    else
      Enum.reverse(result)
    end
  end 

  def split(list, number) do
    Enum.reverse(_split(list, number, []))
  end
  defp _split([], _number, result), do: result
  defp _split([head | tail], number, result) do
    if Enum.count(result) < number do
      result = [head | result]
    else
      result = [head | [Enum.reverse(result)]]
    end
    _split(tail, number, result)
  end 
end

IO.puts MyEnum.all?([1, 2, 3, 4], &(&1 < 5))
IO.puts MyEnum.all?([1, 2, 3, 4], &(&1 < 4))

MyEnum.each([1, 2, 3], fn(x) -> IO.puts(x) end)

IO.inspect MyEnum.filter([1, 2, 3, 4, 5, 6, 7], fn(x) -> rem(x, 2) == 0 end)

IO.inspect MyEnum.take([1, 2, 3, 4, 5, 6], 4)
IO.inspect MyEnum.take([1, 2, 3, 4, 5, 6], -2)

IO.inspect MyEnum.split([1, 2, 3, 4, 5, 6], 4)
