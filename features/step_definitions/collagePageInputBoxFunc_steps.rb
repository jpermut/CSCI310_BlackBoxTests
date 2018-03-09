

When(/^I type "([^"]*)" in the search box$/) do |searchArg|
  fill_in(EnterTopicField, :with => searchArg)
end

Then(/^I should see only "([^"]*)" in the search box$/) do |arg1|
  expect(page).to have_field(EnterTopicField, with: "p")
end

When(/^press enter$/) do 
  find_field(EnterTopicField).native.send_key(:enter)
end


