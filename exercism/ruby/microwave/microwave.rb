class Microwave
  def initialize(input)
    @input = input
  end

  def timer
    hours, minutes = @input.divmod(100)
    hours += minutes / 60
    minutes %= 60
    format('%02d:%02d', hours, minutes)
  end
end
