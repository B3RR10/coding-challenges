module Year2021
  class Day06
    def part1(input)
      fish = input.scan(/\d+/).map(&:to_i)

      days = Array.new(9, 0)
      fish.each { |f| days[f] += 1 }

      80.times do
        days[7] += days[0]
        days = days.rotate
      end

      days.sum
    end

    def part2(input)
      fish = input.scan(/\d+/).map(&:to_i)

      days = Array.new(9, 0)
      fish.each { |f| days[f] += 1 }

      256.times do
        days[7] += days[0]
        days = days.rotate
      end

      days.sum
    end
  end
end
