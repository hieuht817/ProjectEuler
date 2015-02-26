defmodule Pythago do
  @doc """
  find 3 natural number a, b, c:
  a*a + b*b = c*c
  a + b + c = 1000
  """
  def find_triplet do
    # we can prove (with a < b < c) that
    # 0 < a < 333
    # b = 1000*(500 - a)/(1000 - a)
    1..332
    |> Enum.find(fn a -> rem(1000*(500-a), 1000-a) == 0 end)
    |> (fn a -> 
      b = 1000 * (500 - a) / (1000 - a)
      c = 1000 - a - b
      IO.inspect {a, b, c}
      a*b*c
    end).()
  end
end

IO.puts Pythago.find_triplet

