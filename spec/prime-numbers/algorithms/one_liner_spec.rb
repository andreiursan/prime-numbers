require 'spec_helper'

describe PrimeNumbers::AlgorithmOneLiner do


  before(:all) do
    @prime_number_algorithm_one_liner = PrimeNumbers::AlgorithmOneLiner.new
  end

  it "should return true for prime numbers" do
    [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 
    41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 
    83, 89, 97, 101, 7901, 7907, 7919].each do |number|
      @prime_number_algorithm_one_liner.is_prime?(number).should be_true
    end
  end

  it "should return false for non-prime numbers" do
    [832, 1, -23, 0, 63, 888812, 15].each do |number|
      @prime_number_algorithm_one_liner.is_prime?(number).should be_false
    end
  end

end