open System
open Argu

open AoC.Common
open AoC.Day1
open AoC.Day2
open AoC.Day3
open AoC.Day4

type CliError = ArgumentNotSpecified

type CmdArgs =
    | [<AltCommandLine("-1")>] Day1
    | [<AltCommandLine("-2")>] Day2
    | [<AltCommandLine("-3")>] Day3
    | [<AltCommandLine("-4")>] Day4
    interface IArgParserTemplate with
        member this.Usage =
            match this with
            | Day1 -> "Day 1"
            | Day2 -> "Day 2"
            | Day3 -> "Day 3"
            | Day4 -> "Day 4"

let getExitCode result =
    match result with
    | Ok () -> 0
    | Error err ->
        match err with
        | ArgumentNotSpecified -> 1

[<EntryPoint>]
let main argv =
    let errorHandler =
        ProcessExiter(
            colorizer =
                function
                | ErrorCode.HelpText -> None
                | _ -> Some ConsoleColor.Red
        )

    let parser =
        ArgumentParser.Create<CmdArgs>(programName = "AoC", errorHandler = errorHandler)

    match parser.ParseCommandLine argv with
    | p when p.Contains(Day1) -> solveDay1 (readFile "input/day1.txt")
    | p when p.Contains(Day2) -> solveDay2 (readFile "input/day2.txt")
    | p when p.Contains(Day3) -> solveDay3 (readFile "input/day3.txt")
    | p when p.Contains(Day4) -> solveDay4 (readFile "input/day4.txt")
    | _ ->
        printfn $"%s{parser.PrintUsage()}"
        Error ArgumentNotSpecified
    |> getExitCode
