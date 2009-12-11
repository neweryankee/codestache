require 'spec_helper'

describe "/snippets/new.html.erb" do
  include SnippetsHelper

  before(:each) do
    assigns[:snippet] = stub_model(Snippet,
      :new_record? => true,
      :body => "value for body"
    )
  end

  it "renders new snippet form" do
    render

    response.should have_tag("form[action=?][method=post]", snippets_path) do
      with_tag("textarea#snippet_body[name=?]", "snippet[body]")
    end
  end
end
