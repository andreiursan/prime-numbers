require 'spec_helper'

describe PrimeNumbers::AlgorithmOneLiner do
  it_behaves_like "prime number algorithm", PrimeNumbers::AlgorithmOneLiner.new
end
