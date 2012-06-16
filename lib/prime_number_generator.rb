class PrimeNumberGenerator

  def initialize prime_number_algorithm
    @strategy = prime_number_algorithm
  end

  def generate a, b
    [2, 3, 5, 7, 11, 13]
  end

  def is_prime? number
    @strategy.is_prime? number
  end
end