module PrimeNumbers
  class AlgorithmOneLiner
    def generate a, b
      primenumbers = []
      (a..b).each do |number|
        primenumbers << number if self.is_prime? number
      end
      primenumbers
    end

    def is_prime? number
      number < 2 ? false : ('1' * number) !~ /^1?$|^(11+?)\1+$/
    end
  end
end