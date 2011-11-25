# encoding: utf-8

When /^I visit an index page$/ do
  visit '/'
end

Then /^I should see "([^"]*)"$/ do |arg1|
  sleep 5
  page.should have_content('ok!')
end
