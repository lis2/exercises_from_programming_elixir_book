defmodule MyList do
  def span(from, to) when from > to, do: raise "from is bigger than to"
  def span(from, to) when from == to, do: [to]
  def span(from, to), do: [from | span(from + 1, to)]
end

IO.inspect(MyList.span(0, 10))
