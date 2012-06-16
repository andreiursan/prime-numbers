require 'spec_helper'

describe PrimeNumberGenerator do

  before(:all) do
	@prime_generator = PrimeNumberGenerator.new
  end

  it "should respond to message generate" do
	@prime_generator.should respond_to(:generate)
  end

  it "should respond to message is_prime?" do
	@prime_generator.should respond_to(:is_prime?)
  end

  it "should return all prime numbers between 1 and 13" do
  	@prime_generator.generate(1, 13).should eq([1, 2, 3, 5, 7, 11, 13])
  end

  it "should return true for a prime number (17)"

  it "should return false if a number isn't prime (18)"

end