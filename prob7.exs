defmodule Prime do
  def nth_prime(n) do
    max = 10_000_000
    2..max
    |> sieve(Float.round(:math.sqrt max))
    |> Enum.fetch!(n - 1)
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

IO.puts Prime.nth_prime(10001)
