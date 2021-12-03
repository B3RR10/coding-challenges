class Triangle
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    valid_triangle? && uniq_sides?(1)
  end

  def isosceles?
    equilateral? || valid_triangle? && uniq_sides?(2)
  end

  def scalene?
    valid_triangle? && uniq_sides?(3)
  end

  private

  attr_reader :sides

  def valid_triangle?
    sides.all?(&:positive?) &&
      sides.permutation(3).all? { |a, b, c| a + b >= c }
  end

  def uniq_sides?(number)
    sides.uniq.size == number
  end
end
