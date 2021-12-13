require 'spec_helper'

input = <<~INPUT
  6,10
  0,14
  9,10
  0,3
  10,4
  4,11
  6,0
  6,12
  4,1
  0,13
  10,12
  3,4
  3,0
  8,4
  1,10
  2,14
  8,10
  9,0

  fold along y=7
  fold along x=5
INPUT

RSpec.describe Year2021::Day13 do
  it 'solves part1' do
    d = Year2021::Day13.new
    expect(d.part1(input)).to eq(17)
  end
end
