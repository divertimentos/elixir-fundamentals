defmodule Pipe do
  def calc do
    number = 45

    number
    |> Kernel./(2)
    |> :math.pow(-1)
    |> Kernel.*(100)
  end

  def rounder(number) do
    Kernel.round(number)
  end
end

# which returns 4.44445
IO.puts("The calc() function will return: #{Pipe.calc()}")
IO.puts("Which means: (((45 / 2) ^-1) *100)")
# which returns 4
IO.puts("The rounder() function will round it to: #{Pipe.rounder(Pipe.calc())}")
