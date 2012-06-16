class PrimeNumberGenerator

  def initialize prime_number_algorithm
    @strategy = prime_number_algorithm
  end

  def generate a, b
    primenumber = []
    (a..b).each do |number|
      primenumber << number if @strategy.is_prime? number
    end
    primenumber
  end

  def is_prime? number
    @strategy.is_prime? number
  end
end