require 'spec_helper'

describe PrimeNumbers::AlgorithmSieveOfEratosthenes do


  before(:all) do
    @algorithm = PrimeNumbers::AlgorithmSieveOfEratosthenes.new
  end

  it "should return true for prime numbers" do
    [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 
    41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 
    83, 89, 97, 101, 7901, 7907, 7919].each do |number|
      @algorithm.is_prime?(number).should be_true
    end
  end

  it "should return false for non-prime numbers" do
    [832, 1, -23, 0, 63, 888812, 15].each do |number|
      @algorithm.is_prime?(number).should be_false
    end
  end

  it "should retunr prime numbers in an interval" do
    @algorithm.generate(7900, 8000).should eq([7901, 7907, 7919, 7927, 7933, 7937, 7949, 7951, 7963, 7993])
  end

end