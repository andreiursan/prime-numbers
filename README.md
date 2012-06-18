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


## To Do 
1. Add simplecov to the project, s.t. test coverage can be measure
2. Add prime number algorithms that can benefit from parallel computing:
* a. put all prime numbers that have to be checked in a queue for workers to analyze them
* b. take advantage of ruby 1.9.x fibers implementation
3. Add more prime number algorithms to the project.
4. Add Benchmarks to show the speed difference between Prime Number Algorithms


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
