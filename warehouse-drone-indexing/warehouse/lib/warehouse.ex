defmodule Warehouse do
  @moduledoc """
    This is the Warehouse Module. It is used to compute the index identifier of a stored
    item based on its x,y coordinates in the storage facility. Items in the warehouse are stored
    in a diagonal pattern. Below is an example of the first 45 items.

    The `|` symbol represents the wall, and `-` represents the ground. The bottom left corner is the origin,
    which can be represented as the coordinate (1,1)

    9 | 37
    8 | 29 38
    7 | 22 30 39
    6 | 16 23 31 40
    5 | 11 17 24 32 41
    4 | 7  12 18 25 33 42
    3 | 4  8  13 19 26 34 43
    2 | 2  5  9  14 20 27 35 44
    1 | 1  3  6  10 15 21 28 36 45
      * -  -  -  -  -  -  -  -  -
        1  2  3  4  5  6  7  8  9
  """

  @doc """
  The only function available in the Warehouse module. This function finds the index of an item
  based on its given x, y coordinate in the storage system, as described in the moduledoc.
  """
  def find(x, y) do
    findWithRecursion(x, y, 1, 1, 1)
  end

  # Recursive function for finding the value of the x, y coordinate
  defp findWithRecursion(x, y , currentX, currentY, value) do
    cond do
      # If the current x position is less than the x coordinate, move to the next coordinate and increase
      # the value accordingly.
      currentX < x ->
        -1
      # If the current y position is less than the y coordinate, move to the next coordinate and increase
      # the value accordinly.
      currentY < y ->
        -1
      # If the current x and y positions match the desired x, y coordinate, return the value.
      currentX == x and currentY == y ->
        value
      # If for some reason we went to far (most likely if the x, y coordinate is invalid) return a -1 as an error code.
      true
        -1
    end
  end

end
