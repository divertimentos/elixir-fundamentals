defmodule Statements do
  def if_else(num) do
    if num > 42 do
      IO.puts("Higher than 100!")
    else
      IO.puts("Lower than 100!")
    end
  end
end

Statements.if_else(24)
