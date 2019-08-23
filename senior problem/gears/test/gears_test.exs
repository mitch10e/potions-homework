defmodule GearsTest do
  use ExUnit.Case
  doctest Gears

  test "twoPegs[4, 8]" do
    assert Gears.answer([4, 8]) == [8, 3]
  end

  test "threePegs[4, 30, 50]" do
    assert Gears.answer([4, 30, 50]) == [12, 1]
  end

  test "noSolution[1, 504, 1224]" do
    assert Gears.answer([1, 504, 1224]) == [-1, -1]
  end
end
