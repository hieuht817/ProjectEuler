defmodule Prob2 do
  def sum_of_even_fib_num_not_exceed(n) do
    sum_even_fib(1, 2, n, 0)
  end

  defp sum_even_fib(i1, i2, n, sum) when i2 < n do
    if rem(i2, 2) == 0 do
      sum_even_fib(i2, i2 + i1, n, sum + i2)
    else
      sum_even_fib(i2, i2 + i1, n, sum)
    end
  end

  defp sum_even_fib(_i1, _i2, _n, sum) do
    sum
  end
end

IO.puts Prob2.sum_of_even_fib_num_not_exceed 4_000_000
