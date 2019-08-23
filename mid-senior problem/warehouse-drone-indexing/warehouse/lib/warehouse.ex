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

    A helpful tip is that the diagonal axis where x == y, you can take x^2 + (x-1)^2 to solve.
    Example: [5, 5]
    5 * 5 + 4 * 4 == 25 + 16 == 41
  """

  @doc """
  I'm not really sure how elixir handles bad input, seeing as they want to keep their methods short,
  so I'm trying this guard(?) statement to catch bad input and returning -1 in that case.
  """
  def find(x, y) when x < 1 or y < 1, do: -1

  @doc """
  The only function available in the Warehouse module. This function finds the index of an item
  based on its given x, y coordinate in the storage system, as described in the moduledoc.
  """
  def find(x, y) do
    if x == y do
      find_axis(x, y)
    else
      findWithRecursion(x, y, 1, 1, 1)
    end
  end

  # Due to the nature of the numbers on the diagonal axis where x is equal to y, they can actually be found
  # by taking x^2 + (x-1)^2. By finding this formula I have discovered that there is an error in the Divvy Test Case Prompt
  # for the maximum value [100000, 100000], as it should be 19999800001, not 20000000001, which is 200000 more than the correct answer,
  # or 199980001 + x + y.
  defp find_axis(x, y) do
    if x != y do
      -1
    else
      x * y + (x - 1) * (y - 1)
    end
  end

  # Recursive function for finding the value of the x, y coordinate
  # This is the main brains behind the find/2 function defined in this module
  defp findWithRecursion(x, y, currentX, currentY, value) do
    cond do
      # If the current x and y positions match the desired x, y coordinate, return the value.
      currentX == x and currentY == y ->
        value

      # If the current x position is less than the x coordinate, move to the next coordinate and increase
      # the value accordingly.
      currentX < x ->
        nextX = currentX + 1
        delta = nextX
        nextValue = value + delta
        findWithRecursion(x, y, nextX, currentY, nextValue)

      # If the current y position is less than the y coordinate, move to the next coordinate and increase
      # the value accordinly.
      currentY < y ->
        nextY = currentY + 1
        delta = nextY + currentX - 2
        nextValue = value + delta
        findWithRecursion(x, y, currentX, nextY, nextValue)

      # If for some reason we went to far (most likely if the x, y coordinate is invalid) return a -1 as an error code.
      true ->
        -1
    end
  end
end
