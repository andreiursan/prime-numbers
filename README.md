# PrimeNumbers

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'prime-numbers'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install prime-numbers

## Usage

    require 'prime-numbers'

    primes_generator = PrimeNumbers::PrimeNumberGenerator.new

    prime_generator.is_prime? 947
    => true
    
    prime_generate.generate 3500, 3540
    => [3511, 3517, 3527, 3529, 3533, 3539] 


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
