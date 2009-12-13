require 'spec_helper'


describe SnippetNotificationsController do

  describe "POST create" do

    describe "with valid params" do
      it "redirects to the snippet" do
        post :create, :snippet_id => "37", :email => "friend@example.com"
        response.should redirect_to(snippet_url(37))
      end
      
      it "sends email to friend@example.com" do
        SnippetNotifications.should_receive(:deliver_show).with("friend@example.com", "37")
        post :create, :snippet_id => "37", :email => "friend@example.com"
      end
    end

    describe "with no snippet_id" do
      it "redirects to the new snippet page" do
        post :create, :snippet_id => nil, :email => "friend@example.com"
        response.should redirect_to(new_snippet_url)
      end
      
      it "sends no email to friend@example.com" do
        SnippetNotifications.should_not_receive(:deliver_show)
        post :create, :snippet_id => nil, :email => "friend@example.com"
      end
    end

    describe "with no email" do
      it "redirects to the snippet" do
        post :create, :snippet_id => "37", :email => nil
        response.should redirect_to(snippet_url(37))
      end
      
      it "sends no email to friend@example.com" do
        SnippetNotifications.should_not_receive(:deliver_show)
        post :create, :snippet_id => "37", :email => nil
      end
    end

  end

end
