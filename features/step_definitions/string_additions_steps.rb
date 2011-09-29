Given /^I have the following string$/ do |string|
  @raw_string = string
end

When /^I strip the left column$/ do
  @result = @raw_string.lcolstrip
end

When /^I strip the left column and specify an indent size as (\d+)$/ do |indent|
  @result = @raw_string.lcolstrip(indent.to_i)
end

Then /^I should have the following string$/ do |string|
  @result.should eq(string)
end
