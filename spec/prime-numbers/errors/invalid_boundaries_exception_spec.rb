require 'spec_helper'

describe InvalidBoundariesException do
  
  it "should raise a NavigationException" do
    begin
    raise InvalidBoundariesException 
    rescue InvalidBoundariesException => error
      error.class.should == InvalidBoundariesException
    end
  end
  
end