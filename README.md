# advent-of-code skeleton

This project is a skeleton which I use to set up my solutions 
to [Advent of code](https://adventofcode.com/).

Essentially, to add a new solution for day N, add a module DayN.hs 
that exports a constant of type `Solution` (from Framework.hs) and 
link it into `findSolution` in Main.hs
