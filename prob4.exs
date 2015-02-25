defmodule Palindrome do
  def largest_palindrome_product_of_two_number_between(n1, n2) do
    largest(n1, n1, n1, n2, 0)
  end

  def largest(i, j, min, max, result) when i <= max and j <= max do
    if is_palindrome?(i*j) and i*j > result do
      result = i*j
    end
    largest(i, j + 1, min, max, result)
  end

  def largest(i, _j, min, max, result) when i <= max do
    largest(i + 1, min, min, max, result)
  end

  def largest(_i, _j, _min, _max, result) do
    result
  end
   
  def is_palindrome?(number) do
    snum = Integer.to_string number
    snum == String.reverse snum
  end
end

IO.puts Palindrome.largest_palindrome_product_of_two_number_between 100, 999
