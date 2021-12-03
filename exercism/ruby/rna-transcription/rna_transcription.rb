class Complement
  TABLE = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }.freeze

  def self.of_dna(dna)
    dna.chars.map { |c| TABLE[c] }.join('')
  end
end
