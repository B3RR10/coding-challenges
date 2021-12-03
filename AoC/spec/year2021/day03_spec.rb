require 'spec_helper'

report = <<~LINES
  00100
  11110
  10110
  10111
  10101
  01111
  00111
  11100
  10000
  11001
  00010
  01010
LINES

RSpec.describe Year2021::Day03 do
  it 'solves part1' do
    d = Year2021::Day03.new
    expect(d.part1(report)).to eq(198)
  end

  it 'solves part2' do
    d = Year2021::Day03.new
    expect(d.part2(report)).to eq(230)
  end
end
