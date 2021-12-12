require 'spec_helper'

input = <<~INPUT
  5483143223
  2745854711
  5264556173
  6141336146
  6357385478
  4167524645
  2176841721
  6882881134
  4846848554
  5283751526
INPUT

RSpec.describe Year2021::Day11 do
  it 'solves part1' do
    d = Year2021::Day11.new
    expect(d.part1(input)).to eq(1656)
  end

  it 'solves part2' do
    d = Year2021::Day11.new
    expect(d.part2(input)).to eq(195)
  end
end
