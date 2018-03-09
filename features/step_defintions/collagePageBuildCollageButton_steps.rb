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
 
When(/^I am on the collage page$/) do
  visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
  fill_in('Enter topic', :with => 'ambulance')
  find_field("Enter topic").native.send_key(:enter) 
end

Then(/^I should see the "Build Another Collage" button underneath the collage$/) do 
  expect(page).to have_css("		")		// FILL IN PLS
end

When(/^I am on the collage page$/) do
  visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
  fill_in('Enter topic', :with => 'ambulance')
  find_field("Enter topic").native.send_key(:enter)
end

Then(/^I should see the "Build Another Collage" button with text "Build Another Collage"$/) do
  expect(page).to have_css("button[name*='Build Another Collage']")		
end

When(/^I am on the collage page$/) do
  visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
  fill_in('Enter topic', :with => 'ambulance')
  find_field("Enter topic").native.send_key(:enter)
end

Then(/^I should see the "Build Another collage" in grey$/) do
  expect(page).to have_css("button[name*='Build Another Collage' background-color*='grey']")		
end

When(/^I am on the collage page$/) do
  visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
  fill_in('Enter topic', :with => 'ambulance')
  find_field("Enter topic").native.send_key(:enter)
end

Then(/^I should see the "Build Another Collage" button in white text$/) do
  expect(page).to have_css("button[name*='Build Another Collage' background-color*='grey' color*='white' ]")		
end

When(/^I enter "([^"]*)" in the search box$/) 
  fill_in('Enter topic', :with => '')
end

When(/^press Build Another Collage$/) do
  find_field("Enter topic").native.send_key(:enter)
end

Then(/^I should not see a collage and button should be static and unresponsive$/)
  expect(page).to have_css("button[name*='Build Another Collage' disabled]")
end
