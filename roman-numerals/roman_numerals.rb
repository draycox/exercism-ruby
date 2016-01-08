class Fixnum
  VERSION = 1

  def to_roman
    integer = self
    numerials = ''
    roman_mappings.each do |number, roman|
      while integer >= number
        numerials << roman
        integer -= number
      end
    end
    numerials
  end

  def roman_mappings
    {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }
  end
end
