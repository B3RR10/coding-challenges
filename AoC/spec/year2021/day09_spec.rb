require 'spec_helper'

input = <<~INPUT
  2199943210
  3987894921
  9856789892
  8767896789
  9899965678
INPUT

RSpec.describe Year2021::Day09 do
  it 'solves part1' do
    d = Year2021::Day09.new
    expect(d.part1(input)).to eq(15)
  end

  it 'solves part2' do
    d = Year2021::Day09.new
    expect(d.part2(input)).to eq(1134)
  end
end
