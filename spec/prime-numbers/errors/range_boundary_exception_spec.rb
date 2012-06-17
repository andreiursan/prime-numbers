require 'spec_helper'

describe RangeBoundaryException do
  
  it "should raise a RangeBoundaryException" do
    begin
    raise RangeBoundaryException 
    rescue RangeBoundaryException => error
      error.class.should == RangeBoundaryException
    end
  end
end