defmodule Sum do
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end
IO.puts Sum.gcd(10, 5)
