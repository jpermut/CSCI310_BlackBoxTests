EnterTopicField = "Enter topic"

Given(/^I am on the collage page$/) do 
  visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
  fill_in(EnterTopicField, :with => 'ambulance')
  find_field(EnterTopicField).native.send_key(:enter)
end

When(/^I enter "([^"]*)" in the search box$/) do |searchArg|
  fill_in(EnterTopicField, :with => searchArg)
end

When(/^press "([^"]*)"$/) do |collagePageButtonName|
  click_button(collagePageButtonName)
end

Then(/^I should see a collage of "([^"]*)" images$/) do |arg1|
  expect(page).to have_css("img[src*='FileHost/#{arg1}/output.png']")
end

Then(/^I should see the text "([^"]*)" in the collage space$/) do |arg2|
  expect(page).to have_css("img[src*='FileHost/insufficientNumberofImagesFound.png']")
end
