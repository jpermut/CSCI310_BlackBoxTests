Given(/^I am on the collage page$/) do 
  visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
  fill_in('Enter topic', :with => 'ambulance')
  find_field("Enter topic").native.send_key(:enter)
end

When(/^I enter "([^"]*)" in the search box$/) do |searchArg|
  fill_in('Enter topic', :with => searchArg)
end

When(/^press Build Another Collage$/) do
  find_field("Enter topic").native.send_key(:enter)
end

Then(/^I should see a collage of "([^"]*)" images$/) do |arg1|
  expect(page).to have_css("img[src*='FileHost/#{arg1}/output.png']")
end
