require 'spec_helper'

describe Snippet do
  before(:each) do
    @snippet = Factory(:snippet)
  end
  
  it "should be valid" do
    @snippet.should be_valid
  end
  
  describe "without a body" do
    before do
      @snippet.body = nil
      @valid = @snippet.valid?
    end
    
    it "should not be valid" do
      @valid.should == false
    end
    
    it "should have errors on body" do
      @snippet.errors.on(:body).should =~ /blank/
    end
    
  end
  
end
