require 'spec_helper'

describe PrimeNumbers::Generator do

  before(:all) do
    @prime_generator = PrimeNumbers::Generator.new(:one_liner)
  end

  it "should respond to message generate" do
    @prime_generator.should respond_to(:generate)
  end

  it "should respond to message is_prime?" do
    @prime_generator.should respond_to(:is_prime?)
  end

  it "should return all prime numbers between 1 and 13" do
    @prime_generator.generate(1, 13).should eq([2, 3, 5, 7, 11, 13])
  end

  it "should handle reverse ranges (20,1) == (1,20)" do
    primes = @prime_generator.generate(1, 20)
    @prime_generator.generate(20, 1).should eq(primes)  
  end

  it "should raise an error on negtive range boundaries" do
    lambda do
      @prime_generator.generate(20, -2)
    end.should raise_error(RangeBoundaryException, "-2 is an invalid range boundary, please provide a positive integer instead!")  
  end

  it "should raise an error on float numbers range boundaries" do
    lambda do
      @prime_generator.generate(20.5, 2)
    end.should raise_error(RangeBoundaryException, "20.5 is an invalid range boundary, please provide a positive integer instead!") 
  end

  it "should return true for a prime number (17)" do
    @prime_generator.is_prime?(17).should be_true
  end

  it "should return false if a number isn't prime (18)" do
    @prime_generator.is_prime?(18).should be_false
  end

end