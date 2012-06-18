# PrimeNumbers

Prime Numbers Generator

## Installation

Add this line to your application's Gemfile:

    gem 'prime-numbers'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install prime-numbers

## Usage

    require 'prime-numbers'

    # initialize a generator object with a strategy, let's say the "one liner", which uses
    # this algorithm to find the prime numbers:
    #      ('1' * number) !~ /^1?$|^(11+?)\1+$/
    primes_generator = PrimeNumbers::Generator.new(:one_liner)

    # or for a more performant strategy use
    primes_generator = PrimeNumbers::Generator.new(:sieve_of_eratosthenes)

    #then you can check for a specific prime number
    prime_generator.is_prime? 947
    => true
    
    # or for prime numbers within a range
    prime_generate.generate 3500, 3540
    => [3511, 3517, 3527, 3529, 3533, 3539] 

    # inverse ranges are supported
    prime_generate.generate 3540, 3500
    => [3511, 3517, 3527, 3529, 3533, 3539] 


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
