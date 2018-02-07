defmodule Calc do
  def eval(l, first) do
    cond do
      length(l) == 0 -> IO.puts "0"
      length(l) == 1 -> IO.puts "#{first}"
      length(l) == 2 -> IO.puts "invalid input"
      true ->
        value = operator(Enum.at(l, 1), String.to_integer(first), String.to_integer(Enum.at(l, 2)))
        # I wasn't sure how to use the pipe operator with parameters and there
        # didn't seem to be an especially easy way to
        temp = List.delete_at(l, 0)
        new = List.delete_at(temp, 0)
        eval(new, Integer.to_string(value))
    end
  end

  def operator(op, num1, num2) do
    cond do
      op == "+" -> num1+num2
      op == "-" -> num1-num2
      op == "/" -> num1/num2
      op == "*" -> num1*num2
    end
  end

# ATTRIBUTION: a lot of the basic things came from elixir documentation
# and this youtube elixir tutorial: https://youtube.com/watch?v=pBNOavRoNL0
  def main do
    input = IO.gets("Input calculator values: ") |> String.trim
    l = String.split(input, " ")
    eval(l, Enum.at(l, 0))
  end
end
