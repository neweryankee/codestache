require 'spec_helper'

describe SnippetsController do
  describe "routing" do
    it "recognizes and generates #create" do
      { :post => "/snippet_notifications" }.should route_to(:controller => "snippet_notifications", :action => "create") 
    end
  end
end
