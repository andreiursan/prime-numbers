module PrimeNumbers
  class AlgorithmOneLiner
    def is_prime? number
      number < 2 ? false : ('1' * number) !~ /^1?$|^(11+?)\1+$/
    end
  end
end