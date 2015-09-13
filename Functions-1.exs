
concat = fn(a, b) -> a ++ b end
concated_list = concat.([122, 222], [333, 444])
IO.puts(concated_list)

sum = fn a, b, c -> a + b + c end
x = sum.(1, 2, 3)
IO.puts(x)

pair = fn {a, b} -> [a] ++ [b] end
x = pair.({1111, 2222})
IO.puts(x)
