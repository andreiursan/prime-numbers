module PrimeNumbers
  class AlgorithmSieveOfEratosthenes
    def generate lower_bound, upper_bound
        sqrt_upper = (Math.sqrt upper_bound).round
        numbers = Array.new(upper_bound) {|e| e =  false}
        primes = []

        (2 .. sqrt_upper).each do |m|
          if !numbers[m]

            if m >= lower_bound
              primes << m
            end

            k = m * m
            while k <= upper_bound
              numbers[k] = true
              k += m
            end

          end
        end

        (sqrt_upper+1 .. upper_bound).each do |n|
          if !numbers[n] && n >= lower_bound
            primes << n
          end
        end
        primes
    end

    def is_prime? number
      number < 2 ? false : !generate(number,number).empty?
    end
  end
end