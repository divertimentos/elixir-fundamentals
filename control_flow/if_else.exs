defmodule Statements do
  def if_else(num) do
    if num > 42 do
      IO.puts(" #{num} is higher than 100!")
    else
      IO.puts("Lower than 100!")
    end
  end

  def unless_statement(num) do
    unless num > 42 do
      # Interpolation
      IO.puts("#{num} < 42")
    end
  end
end

Statements.if_else(24)
Statements.unless_statement(24)
