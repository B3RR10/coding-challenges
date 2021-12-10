require 'spec_helper'

input = <<~INPUT
  [({(<(())[]>[[{[]{<()<>>
  [(()[<>])]({[<{<<[]>>(
  {([(<{}[<>[]}>{[]{[(<()>
  (((({<>}<{<{<>}{[]{[]{}
  [[<[([]))<([[{}[[()]]]
  [{[{({}]{}}([{[{{{}}([]
  {<[[]]>}<{[{[{[]{()[[[]
  [<(<(<(<{}))><([]([]()
  <{([([[(<>()){}]>(<<{{
  <{([{{}}[<[[[<>{}]]]>[]]
INPUT

RSpec.describe Year2021::Day10 do
  it 'solves part1' do
    d = Year2021::Day10.new
    expect(d.part1(input)).to eq(26_397)
  end

  it 'solves part2' do
    d = Year2021::Day10.new
    expect(d.part2(input)).to eq(288_957)
  end
end
