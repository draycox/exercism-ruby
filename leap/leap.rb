class Year
  Year::VERSION = 1

  def self.leap? year
    leap =  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
    if leap
      "Year, #{year} is a leap year"
    end
  end

end
