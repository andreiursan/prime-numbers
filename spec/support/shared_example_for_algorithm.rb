require 'spec_helper'

shared_examples_for "prime number algorithm" do

  it "should return true for prime numbers" do
    [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 
    41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 
    83, 89, 97, 101, 7901, 7907, 7919].each do |number|
      subject.is_prime?(number).should be_true
    end
  end

  it "should return false for non-prime numbers" do
    [832, 1, -23, 0, 63, 888812, 15].each do |number|
      subject.is_prime?(number).should be_false
    end
  end

  it "should return prime numbers in an interval" do
    subject.generate(7900, 8000).should eq([7901, 7907, 7919, 7927, 7933, 7937, 7949, 7951, 7963, 7993])
  end

end
