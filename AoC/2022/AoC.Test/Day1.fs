module AoC.Test.Day1

open NUnit.Framework

open AoC.Day1

let input =
    """
1000
2000
3000

4000

5000
6000

7000
8000
9000

10000
"""

let caloriesInput = calculateCalories input

[<Test>]
let Part1 () =
    Assert.AreEqual(24000, solvePart1 caloriesInput)

[<Test>]
let Part2 () =
    Assert.AreEqual(45000, solvePart2 caloriesInput)
