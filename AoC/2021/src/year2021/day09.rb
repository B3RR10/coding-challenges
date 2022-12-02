require 'set'

module Year2021
  class Day09
    def part1(input)
      input = input.lines.map(&:strip).map { |l| l.chars.map(&:to_i) }

      low_points = []

      row_limit = input.size - 1
      col_limit = input[0].size - 1

      (0..row_limit).each do |i|
        (0..col_limit).each do |j|
          p = input[i][j]
          next unless [[0, i - 1].max, [i + 1, row_limit].min].all? do |x|
            p < input[x][j] || x == i
          end && [[0, j - 1].max, [j + 1, col_limit].min].all? do |y|
            p < input[i][y] || y == j
          end

          low_points << p
        end
      end

      low_points.map { _1 + 1 }.sum
    end

    def part2(input)
      input = input.lines.map(&:strip).map { |l| l.chars.map(&:to_i) }

      row_limit = input.size - 1
      col_limit = input[0].size - 1

      coord = []

      (0..row_limit).each do |i|
        (0..col_limit).each do |j|
          p = input[i][j]
          next unless [[0, i - 1].max, [i + 1, row_limit].min].all? do |x|
            p < input[x][j] || x == i
          end && [[0, j - 1].max, [j + 1, col_limit].min].all? do |y|
            p < input[i][y] || y == j
          end

          coord << [i, j]
        end
      end

      coord.map { basins _1, input }.sort.reverse.first(3).reduce(&:*)
    end

    private

    def basins(coord, input)
      basin = Set.new([coord])
      loop do
        n = []
        basin.each { n << possible_neighbours(*_1, input) }
        n.flatten!(1)

        break if n.all? { basin.include? _1 }

        n.each { basin << _1 }
      end

      basin.size
    end

    def possible_neighbours(i, j, input)
      n = []
      n << [i, j - 1] if j.positive? && input[i][j - 1] < 9
      n << [i, j + 1] if j < input[i].size - 1 && input[i][j + 1] < 9
      n << [i - 1, j] if i.positive? && input[i - 1][j] < 9
      n << [i + 1, j] if i < input.size - 1 && input[i + 1][j] < 9

      n
    end
  end
end
