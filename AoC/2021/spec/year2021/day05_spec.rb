require 'spec_helper'

input = <<~INPUT
  0,9 -> 5,9
  8,0 -> 0,8
  9,4 -> 3,4
  2,2 -> 2,1
  7,0 -> 7,4
  6,4 -> 2,0
  0,9 -> 2,9
  3,4 -> 1,4
  0,0 -> 8,8
  5,5 -> 8,2
INPUT

RSpec.describe Year2021::Day05 do
  it 'solves part1' do
    d = Year2021::Day05.new
    expect(d.part1(input)).to eq(5)
  end

  it 'solves part2' do
    d = Year2021::Day05.new
    expect(d.part2(input)).to eq(12)
  end
end
