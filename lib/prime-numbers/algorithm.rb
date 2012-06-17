require File.expand_path('../algorithm_one_liner', __FILE__)
require File.expand_path('../algorithm_sieve_of_eratosthenes', __FILE__)

module PrimeNumbers
  class Algorithm
    ALGORITHMS = {
      one_liner: AlgorithmOneLiner,
      sieve_of_eratosthenes: AlgorithmSieveOfEratosthenes
    }

    def self.with_strategy strategy
      ALGORITHMS[strategy].new
    end
  end
end