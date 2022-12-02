require 'spec_helper'

input = '3,4,3,1,2'

RSpec.describe Year2021::Day06 do
  it 'solves part1' do
    d = Year2021::Day06.new
    expect(d.part1(input)).to eq(5934)
  end

  it 'solves part2' do
    d = Year2021::Day06.new
    expect(d.part2(input)).to eq(26_984_457_539)
  end
end
