# -*- encoding: utf-8 -*-
require File.expand_path('../lib/prime-numbers/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andrei Ursan"]
  gem.email         = ["hello@andreiursan.com"]
  gem.description   = %q{Prime Numbers Generator}
  gem.summary       = %q{Simply tells if a number is prime or generates all prime numbers from a provided range}
  gem.homepage      = "https://github.com/andreiursan/prime-numbers"

  gem.add_development_dependency "rspec"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "prime-numbers"
  gem.require_paths = ["lib"]
  gem.version       = PrimeNumbers::VERSION
end
