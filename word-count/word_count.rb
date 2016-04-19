class Phrase
  VERSION = 1
  
  def initialize string
    @string = string
  end

  def word_count
    clean_string.each_with_object(Hash.new(0)){ |word,hash|  hash[word] += 1 }
  end

  private

  def clean_string
    @string.downcase.scan(/\b[\w']+\b/)
  end
  
end

