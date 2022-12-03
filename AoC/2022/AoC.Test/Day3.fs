module AoC.Test.Day3

open NUnit.Framework

open AoC.Day3

let input = """
vJrwpWtwJgWrhcsFMMfFFhFp
jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
PmmdzqPrVvPwwTWBwg
wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
ttgJtRGJQctTZtZT
CrZsJsPPZsGzwwsLwLmpwMDw
"""

[<Test>]
let Part1 () =
    Assert.AreEqual(157, solvePart1 input)

[<Test>]
let Part2 () =
    Assert.AreEqual(70, solvePart2 input)