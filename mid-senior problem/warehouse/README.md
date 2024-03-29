# Warehouse

Items in the warehouse are stored in a diagonal pattern. Below is an example of the first 45 items.

The `|` symbol represents the wall, and `-` represents the ground. The bottom left corner is the origin,
which can be represented as the coordinate (1,1)

```
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
```

A helpful tip is that the diagonal axis where x == y, you can take x^2 + (x-1)^2 to solve.
Example: [5, 5]
5 * 5 + 4 * 4 == 25 + 16 == 41