class Grains
  def self.square position
    2 ** (position - 1)
  end

  def self.total
    square(65) - 1
  end
end
