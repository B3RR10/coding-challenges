module AoC.Day2

open AoC.Common

type Shape = Rock | Paper | Scissors

module Shape =
    let getScore shape =
        match shape with
        | Rock -> 1
        | Paper -> 2
        | Scissors -> 3

    let getWinningShape shape =
        match shape with
        | Rock -> Paper
        | Paper -> Scissors
        | Scissors -> Rock

    let getLosingShape shape =
        match shape with
        | Rock -> Scissors
        | Paper -> Rock
        | Scissors -> Paper

    let fromStr str =
        match str with
        | "A" | "X" -> Rock
        | "B" | "Y" -> Paper
        | "C" | "Z" -> Scissors
        | other -> failwith $"Invalid Shape %s{other}"

type Outcome = Won | Draw | Lost

module Outcome =
    let getResult player opponent =
        match (player, opponent) with
        | a, b when a = b -> Draw
        | a, b when a = Shape.getWinningShape b -> Won
        | _ -> Lost

    let getScore outcome =
        match outcome with
        | Won -> 6
        | Draw -> 3
        | Lost -> 0

    let getPlayerShape outcome opponent =
        match (outcome, opponent) with
        | Draw, x -> x
        | Won, x -> Shape.getWinningShape x
        | Lost, x -> Shape.getLosingShape x

    let fromStr str =
        match str with
        | "X" -> Lost
        | "Y" -> Draw
        | "Z" -> Won
        | other -> failwith $"Invalid Outcome %s{other}"

let getRoundOutcome (opponent, player) =
    let outcome =
        Outcome.getResult player opponent

    Shape.getScore player + Outcome.getScore outcome

let getScore (opponent, outcome) =
    let player =
        Outcome.getPlayerShape outcome opponent

    Shape.getScore player + Outcome.getScore outcome


let parseStrategyGuide lines =
    let parseLine line =
        let list = line |> String.split " "
        list.Item(0) |> Shape.fromStr, list.Item(1) |> Shape.fromStr

    lines |> List.map parseLine

let parseStrategyGuide2 lines =
    let parseLine line =
        let list = line |> String.split " "
        list.Item(0) |> Shape.fromStr, list.Item(1) |> Outcome.fromStr

    lines |> List.map parseLine

let solvePart1 input =
    input
    |> String.split "\n"
    |> parseStrategyGuide
    |> List.map getRoundOutcome
    |> List.sum

let solvePart2 input =
    input
    |> String.split "\n"
    |> parseStrategyGuide2
    |> List.map getScore
    |> List.sum

let solveDay2 input =
    printfn $"Part1: %i{solvePart1 input}"
    printfn $"Part1: %i{solvePart2 input}"
    Ok()
