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
      2 ** number % number == 2
    end
  end
end
