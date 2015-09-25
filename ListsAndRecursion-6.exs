defmodule MyEnum do
  def flatten(list) do
    Enum.reverse(_flatten(list, []))
  end

  defp _flatten([], result), do: result

  defp _flatten([head|tail], result) do
    if is_list(head) do
      result = _flatten(head, result)
    else
      result = [head|result]
    end
    _flatten(tail, result)
  end
end

IO.inspect MyEnum.flatten([1, [2, 3, [4]], 5, [[[6]]]])
