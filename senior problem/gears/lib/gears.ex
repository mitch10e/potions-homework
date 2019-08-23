defmodule Gears do
  @moduledoc """
  This is the Gears Module. It is used to compute the smallest initial gear required to
  turn 2x faster than the input gear for the given problem.

  See Readme.md for module for more information
  """

  def answer(pegs) do
    [-1, -1]
  end

  defp lastGearSize(pegs) do
    positive = true
    distance = 0

  end

  defp iteratePegs([peg_a, peg_b | pegs]) do
    distance = peg_b - peg_a

  end

end
