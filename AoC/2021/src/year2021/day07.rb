module Year2021
  class Day07
    def part1(input)
      positions = input.scan(/\d+/).map(&:to_i)
      median = positions.sort[positions.size / 2]
      positions.reduce(0) { |acc, p| acc + (p - median).abs }
    end

    def part2(input)
      positions = input.scan(/\d+/).map(&:to_i)

      (positions.min..positions.max).map do |opt|
        positions.map do |p|
          n = (p - opt).abs
          n * (n + 1) / 2
        end.sum
      end.min
    end
  end
end
