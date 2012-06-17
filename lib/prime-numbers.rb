require "prime-numbers/version"
require "prime-numbers/algorithm_one_liner"

module PrimeNumbers
  class PrimeNumberGenerator
    def initialize algorithm=AlgorithmOneLiner.new
      @algorithm = prime_number_algorithm
    end

    def generate a, b
      primenumber = []
      range_helper(a,b).each do |number|
        primenumber << number if @algorithm.is_prime? number
      end
      primenumber
    end

    def is_prime? number
      @algorithm.is_prime? number
    end

  private 
    def range_helper a,b
      a,b = b,a if a > b
      (a..b)
    end
  end
end