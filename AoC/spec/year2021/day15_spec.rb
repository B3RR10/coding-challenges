require 'spec_helper'

input = <<~INPUT
  1163751742
  1381373672
  2136511328
  3694931569
  7463417111
  1319128137
  1359912421
  3125421639
  1293138521
  2311944581
INPUT

RSpec.describe Year2021::Day15 do
  it 'solves part1' do
    d = Year2021::Day15.new
    expect(d.part1(input)).to eq(40)
  end

  it 'solves part2' do
    d = Year2021::Day15.new
    expect(d.part2(input)).to eq(315)
  end
end
