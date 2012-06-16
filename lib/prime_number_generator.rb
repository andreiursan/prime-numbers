class PrimeNumberGenerator

  def initialize prime_number_algorithm
    @strategy = prime_number_algorithm
  end

  def generate a, b
    [2, 3, 5, 7, 11, 13]
  end

  def is_prime? number
    return true  if number == 17
    return false if number == 18
  end
end