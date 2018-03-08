Given(/^I am on the collage page2$/) do 
  visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
  fill_in('Enter topic', :with => 'puppy')
  find_field("Enter topic").native.send_key(:enter)
end

When(/^I type "([^"]*)" in the search box$/) do |searchArg|
  fill_in('Enter topic', :with => searchArg)
end

Then(/^I should see only "([^"]*)" in the search box$/) do |arg1|
  expect(page).to have_field("Enter topic", with: "p")
end
