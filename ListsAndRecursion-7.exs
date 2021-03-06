defmodule MyList do
  def span(from, to) when from > to, do: raise "from is bigger than to"
  def span(from, to) when from == to, do: [to]
  def span(from, to), do: [from | span(from + 1, to)]

 def prime_span(n) do
    range = span(2, n)
    products = for x <- range, y <- range, x >= y, x * y <= n, do: x * y
    IO.inspect products
    range -- products
  end
end

IO.inspect MyList.prime_span(20)
