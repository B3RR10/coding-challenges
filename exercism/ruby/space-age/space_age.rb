class SpaceAge
  def initialize(seconds)
    @seconds = seconds
  end

  {
    earth: 1,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }.each do |planet, earth_years|
    define_method("on_#{planet}") do
      to_years / earth_years
    end
  end

  private

  def to_years
    @seconds / (365.25 * 24 * 3600)
  end
end
