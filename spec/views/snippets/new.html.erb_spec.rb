require 'spec_helper'

describe "/snippets/new.html.erb" do
  include SnippetsHelper

  before(:each) do
    assigns[:snippet] = stub_model(Snippet,
      :new_record? => true,
      :title => "value for title",
      :body => "value for body"
    )
  end

  it "renders new snippet form" do
    render

    response.should have_tag("form[action=?][method=post]", snippets_path) do
      with_tag("textarea#snippet_body[name=?]", "snippet[body]")
      with_tag("input#snippet_title[type=text][name=?]", "snippet[title]")
    end
  end
end
