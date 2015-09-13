prefix = fn
  (prefix) -> fn
    (name) -> "#{prefix} #{name}"
  end
end

IO.puts(prefix.("Mr").("Smith"))
