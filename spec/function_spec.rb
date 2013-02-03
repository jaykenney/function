require 'spec_helper'
require 'function'

describe Function do
  it "should run a block using itself as scope" do
    f = Function.new do
      self.class
    end
    
    f.call.should equal(Function)
  end
  
  it "should allow adding attributes" do
    f = Function.new { return }
    
    f.x = 2
    
    f.x.should equal(2)
  end
  
  it "should respond_to anything ending with an =" do
    f = Function.new { return }
    
    f.should be_respond_to(:"x=" )
  end
  
end