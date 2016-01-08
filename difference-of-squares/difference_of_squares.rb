class Squares
  VERSION = 1
  def initialize(number)
    @number = number
  end

  def sum_of_squares
    squares = []
    1.upto(@number) do |num|
      squares << num ** 2
    end
    squares.reduce(:+)
  end

  def square_of_sums
    sums = 1.upto(@number).reduce(:+)
    sums**2
  end

  def difference
    square_of_sums - sum_of_squares
  end


end
