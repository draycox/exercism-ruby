class Prime

  def nth integer
    raise ArgumentError if integer  < 1
    upper_limit = integer * (Math.log(integer) + 3)
    primes = (2..upper_limit).to_a
    primes.each {|num| primes.delete_if {|prime| prime > num && (prime % num) == 0} }
    primes[integer-1]
  end

end
