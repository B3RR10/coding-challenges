module AoC.Day3

open AoC.Common

// Part 1

let getCommonType (rucksack: string) =
    rucksack
    |> Seq.toList
    |> List.splitInto 2
    |> Seq.map Set.ofList
    |> Set.intersectMany
    |> Set.toSeq
    |> Seq.exactlyOne

let getPriority item =
    match item with
    | a when System.Char.IsLower(a) -> int a - int 'a' + 1
    | a when System.Char.IsUpper(a) -> int a - int 'A' + 27
    | _ -> 0

let solvePart1 input =
    input
    |> String.split "\n"
    |> List.map getCommonType
    |> List.map getPriority
    |> List.sum

// Part 2

let getCommonTypeForBadge (rucksacks: string list) =
    rucksacks
    |> List.map Seq.toList
    |> List.map Set.ofList
    |> Set.intersectMany
    |> Set.toSeq
    |> Seq.exactlyOne

let solvePart2 input =
    input
    |> String.split "\n"
    |> List.chunkBySize 3
    |> List.map getCommonTypeForBadge
    |> List.map getPriority
    |> List.sum

let solveDay3 input =
    printfn $"Part1: %i{solvePart1 input}"
    printfn $"Part2: %i{solvePart2 input}"
    Ok ()