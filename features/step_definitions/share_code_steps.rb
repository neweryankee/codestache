Given /^a snippet exists with an? (.*) of "([^"]*)"$/ do |attr, value|
  Factory(:snippet, attr.gsub(' ', '_') => value)
end

Given /^the following snippets?$/ do |table|
  table.hashes.each do |hash|
    Factory(:snippet, hash)
  end
end

