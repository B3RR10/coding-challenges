module AoC.Day1

open AoC.Common

let calculateCalories input =
    let listToInt l = l |> List.map int

    input
    |> String.replace ("\r", "")
    |> String.split "\n\n"
    |> List.map (String.split "\n")
    |> List.map listToInt
    |> List.map List.sum

let solvePart1 caloriesList = caloriesList |> List.max

let solvePart2 caloriesList =
    caloriesList
    |> List.sortDescending
    |> List.take 3
    |> List.sum

let solveDay1 input =
    let caloriesList = calculateCalories input

    printfn $"Part1: %i{solvePart1 caloriesList}"
    printfn $"Part2: %i{solvePart2 caloriesList}"
    Ok()
