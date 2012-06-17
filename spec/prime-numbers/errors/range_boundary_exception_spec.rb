require 'spec_helper'

describe RangeBoundaryException do
  
  it "should raise a NavigationException" do
    begin
    raise RangeBoundaryException 
    rescue RangeBoundaryException => error
      error.class.should == RangeBoundariesException
    end
  end
  
end