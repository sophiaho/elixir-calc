defmodule CalcTest do
  use ExUnit.Case
  doctest Calc

  test "basic addition" do
    assert Calc.operator("+", 2, 3) == 5
  end

  test "basic subtraction" do
    assert Calc.operator("-", 1, 3) == -2
  end

  test "basic multiplication" do
    assert Calc.operator("*", 3, 3) == 9
  end

  test "basic division" do
    assert Calc.operator("/", 12, 3) == 4
  end

  test "basic division with remainders" do
    assert Float.round(Calc.operator("/", 11, 3), 1) == 3.7
  end
