defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadraple(n), do: double(n) * 2
end

IO.puts(Times.quadraple(5))



