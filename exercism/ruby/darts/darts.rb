class Darts
  def initialize(pos_x, pos_y)
    @pos_x = pos_x
    @pos_y = pos_y
  end

  def score
    rad = Math.sqrt(@pos_x * @pos_x + @pos_y * @pos_y)
    case rad
    when 0..1
      10
    when 1..5
      5
    when 5..10
      1
    else
      0
    end
  end
end
