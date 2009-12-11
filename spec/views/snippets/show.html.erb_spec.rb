require 'spec_helper'

describe "/snippets/show.html.erb" do
  include SnippetsHelper
  before(:each) do
    assigns[:snippet] = @snippet = stub_model(Snippet,
      :title => "value for title",
      :body => "value for body"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ body/)
    response.should have_text(/value\ for\ title/)
  end
end
