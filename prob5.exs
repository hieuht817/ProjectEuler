defmodule LeastMultiple do
  def least_multiple_from_1_to(n) do
    least_multiple_of_all_between(1, n, 1)
  end

  def least_multiple_of_all_between(count, n, acc) when count <= n do
    least_multiple_of_all_between(count + 1, n, least_multiple_of(count, acc))
  end

  def least_multiple_of_all_between(count, n, acc) do
    acc
  end

  def least_multiple_of(a, b) do
    div(a * b,  gcd(a, b))
  end

  def gcd(a, b) when a < b do
    gcd(b,a)
  end

  def gcd(a, b) when b > 0 do
    gcd(b, rem(a,b))
  end

  def gcd(a, 0) do
    a
  end

end

