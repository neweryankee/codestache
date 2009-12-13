class SnippetNotificationsController < ApplicationController
  
  def create
    if params[:email] && params[:snippet_id]
      SnippetNotifications.deliver_show(params[:email], params[:snippet_id])
      flash[:notice] = "Email sent to #{params[:email]}"
    end
    redirect_to params[:snippet_id] ? snippet_url(params[:snippet_id]) : new_snippet_url
  end

end
