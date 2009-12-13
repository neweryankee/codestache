class SnippetNotifications < ActionMailer::Base
  
   default_url_options[:host] = HOST
  
  def show(to, snippet_id)
    subject    'peep this code snippet'
    recipients to
    from       'noreply@codestache.com'
    sent_on    Time.now
    body       :snippet_id => snippet_id
  end

end
