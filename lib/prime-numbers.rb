require "prime-numbers/version"
require "prime-numbers/algorithms/algorithm"
require "prime-numbers/algorithms/one_liner"
require "prime-numbers/algorithms/sieve_of_eratosthenes"
require "prime-numbers/errors/range_boundary_exception"

module PrimeNumbers
  class Generator
    def initialize algorithm_strategy
      @algorithm = Algorithm.with_strategy(algorithm_strategy)
    end

    def generate a, b
      a,b = range_sanitizer(a,b)[0], range_sanitizer(a,b)[1]
      @algorithm.generate(a,b)
    end

    def is_prime? number
      @algorithm.is_prime? number
    end

  private 
    def range_sanitizer a,b
      if a <= 0 || a.class == Float
        raise RangeBoundaryException, "#{a} is an invalid range boundary, please provide a positive integer instead!"
      elsif b <= 0 || b.class == Float
        raise RangeBoundaryException, "#{b} is an invalid range boundary, please provide a positive integer instead!"
      end

      a,b = b,a if a > b
      [a,b]
    end
  end
end
