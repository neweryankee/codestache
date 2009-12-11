Given /^a snippet exists with an? (.*) of "([^"]*)"$/ do |attr, value|
  Factory(:snippet, attr.gsub(' ', '_') => value)
end
