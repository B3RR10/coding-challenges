module AoC.Common

open System.IO

let readFile filePath = File.ReadAllText filePath

let readLines filePath = File.ReadLines filePath

module String =
    let split (separator: string) (str: string) : string list =
        let str = str.Trim()
        Seq.toList (str.Split separator)

    let replace (src: string, tgt: string) (str: string) = str.Replace(src, tgt)
