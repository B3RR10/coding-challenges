class Pangram
  def self.pangram?(phrase)
    phrase.downcase.chars.uniq.filter { |c| c.match(/[[:alpha:]]/) }.count == 26
  end
end
