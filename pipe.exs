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

IO.puts(Pipe.calc()) # which returns 4.44445
IO.puts("That means: (((45 / 2) ^-1) *100)")
IO.puts(Pipe.rounder(Pipe.calc())) # which returns 4

Pipe.calc()
