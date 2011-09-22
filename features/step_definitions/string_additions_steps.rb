Given /^I have the following string$/ do |string|
  @raw_string = string
end

When /^I strip the left column$/ do
  @result = @raw_string.lcolstrip
end

Then /^I should have the following string$/ do |string|
  @result.should eq(string)
end
