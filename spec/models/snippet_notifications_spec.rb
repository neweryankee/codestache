require 'spec_helper'

describe SnippetNotifications, "Show Email" do
  include ActionController::UrlWriter

  before do
    @email = SnippetNotifications.create_show("friend@example.com", "37")
  end

  it "should be set to be delivered to the email passed in" do
    @email.should deliver_to("friend@example.com")
  end

  it "should contain a link to the confirmation link" do
    @email.should have_text(/#{snippet_url(37, :host => HOST)}/)
  end

  it "should have the correct subject" do
    @email.should have_subject(/code snippet/i)
  end

end
