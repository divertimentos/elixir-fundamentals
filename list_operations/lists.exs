lista = [2, 3, 5, 10]

defmodule Lists do
  def mapper(list) do
    listb = Enum.map(list, fn num -> num |> :math.pow(2) end)
    Enum.map(listb, fn num -> Kernel.round(num) end)
  end
end

IO.inspect(Lists.mapper(lista))
