module Year2021
  class Day02
    def part1(input)
      pos = { position: 0, depth: 0 }

      input.lines.map { |l| l.split(' ') }.each do |dir, val|
        case dir
        when 'forward'
          pos[:position] += val.to_i
        when 'down'
          pos[:depth] += val.to_i
        when 'up'
          pos[:depth] -= val.to_i
        end
      end

      pos.values.reduce(&:*)
    end

    def part2(input)
      pos = { position: 0, depth: 0, aim: 0 }

      input.lines.map { |l| l.split(' ') }.each do |dir, val|
        case dir
        when 'forward'
          pos[:position] += val.to_i
          pos[:depth] += val.to_i * pos[:aim]
        when 'down'
          pos[:aim] += val.to_i
        when 'up'
          pos[:aim] -= val.to_i
        end
      end

      pos.values.first(2).reduce(&:*)
    end
  end
end
