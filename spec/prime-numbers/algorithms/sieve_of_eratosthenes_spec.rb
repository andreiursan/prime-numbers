require 'spec_helper'

describe PrimeNumbers::AlgorithmSieveOfEratosthenes do
  it_behaves_like "prime number algorithm", PrimeNumbers::AlgorithmSieveOfEratosthenes.new
end
