defmodule GearsTest do
  use ExUnit.Case
  doctest Gears

  test "greets the world" do
    assert Gears.hello() == :world
  end
end
