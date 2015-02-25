defmodule DiffBetweenSum do
  def  diff_between_squareofsum_and_sumofsquare_from_1_to(n) do
    square_of_sum(n) - sum_of_square(n)
  end

  def square_of_sum(n) do
    sum(n)*sum(n)
  end

  def sum(n) do
    div(n*(n+1), 2)
  end

  def sum_of_square(n) do
    sum_of_square(1, n, 0)
  end

  defp sum_of_square(count, n, acc) when count <= n do
    sum_of_square(count + 1, n, acc + count*count)
  end

  defp sum_of_square(_count, _n, acc) do
    acc
  end
end

IO.puts DiffBetweenSum.diff_between_squareofsum_and_sumofsquare_from_1_to 100
