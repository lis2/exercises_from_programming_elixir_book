fizz = fn 
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, third) -> third
end

IO.puts(fizz.(0, 0, "a"))
IO.puts(fizz.(0, "b", "a"))
IO.puts(fizz.("a","b", "c"))
