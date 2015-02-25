defmodule GreatestProduct do
  def greatest_product_of_13_adjacent_digits_from_num(num) do
    num |> Integer.to_char_list |> Stream.map(&(&1 - ?0)) |> Stream.chunk(13, 1) |> Stream.map(&(Enum.reduce(&1, fn acc, x -> acc * x end))) |> Enum.max
  end
end


