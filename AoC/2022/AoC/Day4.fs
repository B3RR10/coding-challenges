module AoC.Day4

open AoC.Common

let parseSectionPair line =
    line
    |> String.split ","
    |> List.map (fun (x:string) -> String.split "-" x |> List.map int)

let areSubsections sectionAssignment =
    match parseSectionPair sectionAssignment with
    | [ [a; b]; [c; d] ] when c >= a && d <= b -> true
    | [ [a; b]; [c; d] ] when a >= c && b <= d -> true
    | _ -> false

let solvePart1 (input:string) =
    input
    |> String.split "\n"
    |> List.filter areSubsections
    |> List.length

let doSectionsOverlap sectionAssigment =
    match parseSectionPair sectionAssigment with
    | [ [a; b]; [c; d] ] when a >= c && a <= d || b >= c && b <= d -> true
    | [ [a; b]; [c; d] ] when c >= a && c <= b || d >= a && d <= b -> true
    | _ -> false

let solvePart2 (input:string) =
    input
    |> String.split "\n"
    |> List.filter doSectionsOverlap
    |> List.length

let solveDay4 input =
    printfn $"Part1: %i{solvePart1 input}"
    printfn $"Part2: %i{solvePart2 input}"
    Ok ()
