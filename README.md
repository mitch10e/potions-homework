# potions-homework
Elixir is the mighty ether!

This repository represents my work for an interview task set to me by a company that (hopefully) will not be mentioned anywhere in this repository. The life of this repo will not be very long, as once the process is over I will either delete or privatize this repo so that it doesn't cause any problems for the recruiters looking to use this same problem in the future.

The prompts will not be provided, as it was explicitly stated to not include it anywhere in git. As such, I will describe the problems as best I can in comments so that those seeing it can at least understand what is going on.

## Mid-Senior Problem

The problem was originally solved in Swift (I'm currently an iOS developer), but soon after figuring out the algorithm for solving for (x, y), I found out that Swift's stack can't handle more than about 40,000 items on its memory stack, so I had to abandon the project. Since I was asked to complete the project in Elixir, I decided that rather than moving to Python or another scripting language I would begin learning Elixir from the docs and translate my solution over. After reviewing the docs, it appears that Elixir is focused mainly on using recursion for basic things like iterating over lists, etc. and that it is built around being fast using recursion. To my surprise, test cases that were in Swift that took some time to finish (or crash if they got too big) finished almost instantly in Elixir.

While trying to solve the final test case (which had me super confused as all my other test cases were passing correctly), I started playing around with my algorithm, and happened to try going up the main x == y diagonal. I noticed the numbers seemed familiar. It wasn't quite x^2 lining up with the x and y, but with a little fiddling I was able to solve the diagonal equation (x^2 + (x-1)^2), which proved my suspicions about the test case. When using x = 100,000 y = 100,000, I got the same answer using either the recursive function or the axis solution. The correct value for the furthest x,y coordinate is in fact 200,000 less than the provided test case value (or 20000000001 - x - y, sneaky!), which is 19999800001.

## Senior Problem

