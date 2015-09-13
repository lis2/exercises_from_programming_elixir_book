defmodule Chop do
  def guess(actual, range, number \\ nil)
  def guess(actual, _range, number) when actual == number, do: actual
  def guess(actual, range, number) when number == nil, do: guess(actual, range, my_number(range))
  def guess(actual, a.._b = _range, number) when number > actual, do: guess(actual, (a..number), my_number(a..number))
  def guess(actual, _a..b = _range, number) when number < actual, do: guess(actual, (number..b), my_number(number..b))

  def my_number(a..b = _range) do
    number = div((b + a), 2)
    IO.puts "It is #{number}"
    number
  end
end

Chop.guess(273, 1..1000)
