require 'spec_helper'

describe "/snippets/show.html.erb" do
  include SnippetsHelper
  before(:each) do
    assigns[:snippet] = @snippet = stub_model(Snippet,
      :title => "value for title",
      :body => "value for body",
      :to_param => "37"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ body/)
    response.should have_text(/value\ for\ title/)
    
    response.should have_tag("form[action=?][method=post]", snippet_notifications_path(:snippet_id => "37")) do
      with_tag("input#email[type=text][name=?]", "email")
    end
    
  end
end
