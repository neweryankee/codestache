require 'spec_helper'

describe SnippetsController do

  def mock_snippet(stubs={})
    @mock_snippet ||= mock_model(Snippet, stubs)
  end

  describe "GET show" do
    it "assigns the requested snippet as @snippet" do
      Snippet.stub!(:find).with("37").and_return(mock_snippet)
      get :show, :id => "37"
      assigns[:snippet].should equal(mock_snippet)
    end
  end

  describe "GET new" do
    it "assigns a new snippet as @snippet" do
      Snippet.stub!(:new).and_return(mock_snippet)
      get :new
      assigns[:snippet].should equal(mock_snippet)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created snippet as @snippet" do
        Snippet.stub!(:new).with({'these' => 'params'}).and_return(mock_snippet(:save => true))
        post :create, :snippet => {:these => 'params'}
        assigns[:snippet].should equal(mock_snippet)
      end

      it "redirects to the created snippet" do
        Snippet.stub!(:new).and_return(mock_snippet(:save => true))
        post :create, :snippet => {}
        response.should redirect_to(snippet_url(mock_snippet))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved snippet as @snippet" do
        Snippet.stub!(:new).with({'these' => 'params'}).and_return(mock_snippet(:save => false))
        post :create, :snippet => {:these => 'params'}
        assigns[:snippet].should equal(mock_snippet)
      end

      it "re-renders the 'new' template" do
        Snippet.stub!(:new).and_return(mock_snippet(:save => false))
        post :create, :snippet => {}
        response.should render_template('new')
      end
    end

  end

end
