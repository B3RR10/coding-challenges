module AoC.Test.Day4

open NUnit.Framework

open AoC.Day4

let input = """
2-4,6-8
2-3,4-5
5-7,7-9
2-8,3-7
6-6,4-6
2-6,4-8
"""

[<Test>]
let Part1 () =
    Assert.AreEqual(2, solvePart1 input)

[<Test>]
let Part2 () =
    Assert.AreEqual(4, solvePart2 input)
