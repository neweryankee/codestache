require 'spec_helper'

describe SnippetsController do
  describe "routing" do
    it "recognizes and generates #new" do
      { :get => "/snippets/new" }.should route_to(:controller => "snippets", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/snippets/1" }.should route_to(:controller => "snippets", :action => "show", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/snippets" }.should route_to(:controller => "snippets", :action => "create") 
    end
  end
end
