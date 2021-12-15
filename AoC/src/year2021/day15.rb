require 'set'

module Year2021
  class Day15
    def part1(input)
      input = input.lines.map { _1.scan(/\d/).map(&:to_i) }

      find_risk(input, [input.size - 1, input[0].size - 1])
    end

    def part2(input)
      input = input.lines.map { _1.scan(/\d/).map(&:to_i) }

      big_input = Array.new(input.size * 5) do |y|
        Array.new(input[0].size * 5) do |x|
          risk = input[y % input.size][x % input[0].size] + y / input.size + x / input[0].size
          risk % 10 + risk / 10
        end
      end

      find_risk(big_input, [big_input.size - 1, big_input[0].size - 1])
    end

    private

    def find_risk(prisk, pend)
      prsk = { [0, 0] => 0 }
      visited = Set[]
      last = false
      until last
        pos, risk = prsk.min_by { |_, v| v }
        visited << pos
        [[-1, 0], [1, 0], [0, -1], [0, 1]].map { |y, x| [pos[0] + y, pos[1] + x] }.each do |y, x|
          next if y.negative? || x.negative? || y > pend[0] || x > pend[1]
          next if visited.include? [y, x]

          new_risk = risk + prisk[y][x]
          prsk[[y, x]] = [(prsk[[y, x]] || new_risk), new_risk].min
          last = true if pend == [y, x]
        end
        prsk.delete(pos)
      end
      prsk[pend]
    end
  end
end
