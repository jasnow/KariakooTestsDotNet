## GIVEN ##################################################

Given /^that I am on home page$/ do
  visit '/'
end

Given /^I can get to the ([^ ]*) entry page$/ do |word|
  visit "/#{word}.php"
end

Given /^I can get to the ([^ ]*) ([^ ]*) page$/ do |top, action|
  visit "/#{top}/#{action}"
end

## WHEN ##################################################

When /^I enter the date (.*)$/ do |date|
  fill_in "date", :with => "#{date}"
end

When /^I enter the date "([^"]*\])"$/ do |date|
  fill_in "date", :with => date
end

When /^I enter the lowest farm gate quoted price as (.*)$/ do |price|
  fill_in "flprice", :with => price
end

When /^I enter the highest farm gate quoted price as (.*)$/ do |price|
  fill_in "fhprice", :with => price
end

When /^I enter the lowest delivered quoted price as (.*)$/ do |price|
  fill_in "dlprice", :with => price
end

When /^I enter the highest delivered quoted price as (.*)$/ do |price|
  fill_in "dhprice", :with => price
end

When /^I enter the lowest wholesale quoted price as (.*)$/ do |price|
  fill_in "wlprice", :with => price
end

When /^I enter the highest wholesale quoted price as (.*)$/ do |price|
  fill_in "whprice", :with => price
end

When /^I enter the lowest retail quoted price as (.*)$/ do |price|
  fill_in "rlprice", :with => price
end

When /^I enter the highest retail quoted price as (.*)$/ do |price|
  fill_in "rhprice", :with => price
end

When /^I push "Submit" button$/ do
  find_button('Submit').click
end

When /^I enter the quality "([^"]*)"$/ do |quality|
  page.select quality, :from => "quality"
end

When /^I enter the amount received (.*)$/ do |amount|
  fill_in "amount", :with => amount
end

When /^I select the "(.*?)" as "(.*?)"$/ do |variable, value|
  oneword = variable.gsub(" ","")
  page.select value, :from => oneword
end

When /^I enter the "(.*?)" as "(.*?)"$/ do |variable, value|
  oneword = variable.gsub(/\s+/,"")
  fill_in oneword, :with => value
end

When /^I push "(.*?)" button$/ do |button|
  find_button(button).click
end

## THEN ##################################################

Then /^the response should succesfully$/ do
   page.should_not have_content "ERROR"
end

Then /^the submitted page should contain "(.*?)"$/ do |response|
   page.should have_content "Missing Submitted Page"
end
