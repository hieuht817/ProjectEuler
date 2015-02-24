defmodule PrimeFactor do
  def largest_pf_of(n) do
    largest_pf(2, n, 1)
  end

  defp largest_pf(count, n, lpf) when count <= n do
    if rem(n, count) == 0 do
      largest_pf(count, div(n, count), count)
    else
      largest_pf(count + 1, n, lpf)
    end
  end

  defp largest_pf(_count, _n, lpf) do
    lpf
  end
end

IO.puts PrimeFactor.largest_pf_of 600851475143
