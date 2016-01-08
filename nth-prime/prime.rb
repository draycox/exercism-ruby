class Prime


  def nth integer
    primes  = {}
    end
    primes[integer]
  end

  def sieve_of_eratosthenes
    primes = {}
    2.upto(100000) do |x|
      if x % 2 == 0 ||  x % 3 == 0 || x % 5 == 0 || x % 7 == 0
        next
      else
        primes[x] = x
      end
    end
  end

end
