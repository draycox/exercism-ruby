class Pangram
  Pangram::VERSION = 1
  ALPHABET = ('a'..'z').to_a

  def self.is_pangram? str
    (convert_to_character_array str) == ALPHABET
  end

  def self.convert_to_character_array str
    clean_string(str).uniq.sort
  end

  def self.clean_string str
    str.downcase.gsub(/[^a-z]/, '').chars
  end
end
