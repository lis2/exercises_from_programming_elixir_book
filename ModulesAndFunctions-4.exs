defmodule Sum do
  def calc(0), do: 0
  def calc(n), do: n + calc(n - 1)
end

IO.puts Sum.calc(10)
