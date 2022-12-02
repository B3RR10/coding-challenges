require 'spec_helper'

input_small = <<~INPUT
  start-A
  start-b
  A-c
  A-b
  b-d
  A-end
  b-end
INPUT

input_medium = <<~INPUT
  dc-end
  HN-start
  start-kj
  dc-start
  dc-HN
  LN-dc
  HN-end
  kj-sa
  kj-HN
  kj-dc
INPUT

input_large = <<~INPUT
  fs-end
  he-DX
  fs-he
  start-DX
  pj-DX
  end-zg
  zg-sl
  zg-pj
  pj-he
  RW-he
  fs-DX
  pj-RW
  zg-RW
  start-pj
  he-WI
  zg-he
  pj-fs
  start-RW
INPUT

RSpec.describe Year2021::Day12 do
  it 'solves part1 small' do
    d = Year2021::Day12.new
    expect(d.part1(input_small)).to eq(10)
  end

  it 'solves part1 medium' do
    d = Year2021::Day12.new
    expect(d.part1(input_medium)).to eq(19)
  end

  it 'solves part1 large' do
    d = Year2021::Day12.new
    expect(d.part1(input_large)).to eq(226)
  end

  it 'solves part2 small' do
    d = Year2021::Day12.new
    expect(d.part2(input_small)).to eq(36)
  end

  it 'solves part2 medium' do
    d = Year2021::Day12.new
    expect(d.part2(input_medium)).to eq(103)
  end

  it 'solves part2 large' do
    d = Year2021::Day12.new
    expect(d.part2(input_large)).to eq(3509)
  end
end
