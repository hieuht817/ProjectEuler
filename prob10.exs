defmodule Prime do
  def sum_all_prime_below(n) do
    2..n 
    |> Stream.map(&(&1))
    |> sieve(Float.round :math.sqrt n)
    |> Enum.sum
  end

  defp sieve(enum, sqrtn) do
    sieve(enum, sqrtn, 2)
  end

  defp sieve(enum, sqrtn, i) when i < sqrtn do
    Stream.reject(enum, fn x -> rem(x, i) == 0 and x/i != 1 end)
    |> sieve(sqrtn, i + 1)
  end

  defp sieve(enum, _sqrtn, _i) do
    enum
  end
end

IO.puts Prime.sum_all_prime_below(2000000)
