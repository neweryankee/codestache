Given /^a snippet exists with an? (.*) of "([^"]*)"$/ do |attr, value|
  Factory(:snippet, attr.gsub(' ', '_') => value)
end

# uses xpath to check for a form element based on the label,
#   instead of using a css selector w/ label_for
# name should be the complete name in the html page.
#  meaning Title: and not Title

# find the label that is name.  Get the "for" of the label
# uses the for to check for the input with that as an id

Then /^I should see a "([^\"]*)" for "([^\"]*)"$/ do |type, name|
  case type
    when 'Button'
      response.should have_xpath("//input[@type='submit' and @value='#{name}']")
    when 'Text Field'
      response.should have_xpath("//input[@type='text' and @id=..//label[normalize-space(text())=\"#{name}\"]//@for]")
    when 'Text Area'
      response.should have_xpath("//textarea[@id=..//label[normalize-space(text())=\"#{name}\"]//@for]")
    when 'Radio Button'
      pending
    when 'Select Field'
      response.should have_xpath("//select[@id=..//label[normalize-space(text())=\"#{name}\"]//@for]")
    else pending
  end
end
