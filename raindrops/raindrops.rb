class Raindrops
  VERSION = 1

  def self.convert number
    sounds = ''
    if number % 3 == 0
      sounds += 'Pling'
    end

    if number % 5 == 0
      sounds += 'Plang'
    end

    if number % 7 == 0
      sounds += 'Plong'
    end
    sounds.empty? ? "#{number}" : sounds
  end

end
