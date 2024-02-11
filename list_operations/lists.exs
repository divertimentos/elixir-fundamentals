lista = [2, 3, 5, 10]
people = [%{name: "Bob", age: 30}, %{name: "Bill", age: 18}]

defmodule Lists do
  # Power and round (map):
  def mapper(list) do
    listb = Enum.map(list, fn num -> num |> :math.pow(2) end)
    Enum.map(listb, fn num -> Kernel.round(num) end)
  end

  # Returns only the old enough to drink (filter):
  def old_enough(list) do
    # Filters the object
    allowed = Enum.filter(list, fn %{age: age} -> age > 21 end)

    # Shows only the name
    Enum.map(allowed, fn person -> person.name end)
  end

  def reducer(list) do
    # Sums up all items in lista
    Enum.reduce(list, fn num, acc -> num + acc end)
  end
end

# This print only worked because .inspect was used 
# instead of .puts. 
# And I don't know why
IO.inspect(Lists.mapper(lista))
IO.inspect(Lists.old_enough(people))
IO.inspect(Lists.reducer(lista))
