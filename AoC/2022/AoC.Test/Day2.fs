module AoC.Test.Day2

open NUnit.Framework

open AoC.Day2


let input ="""
A Y
B X
C Z
"""

[<Test>]
let Part1 () =
    Assert.AreEqual(15, solvePart1 input)

[<Test>]
let Part2 () =
    Assert.AreEqual(12, solvePart2 input)
