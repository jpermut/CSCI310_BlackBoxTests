EnterTopicField = "Enter topic"

When(/^I type "([^"]*)" in the search box$/) do |searchArg|
  fill_in(EnterTopicField, :with => searchArg)
end

Then(/^I should see only "([^"]*)" in the search box$/) do |arg1|
  expect(page).to have_field(EnterTopicField, with: "p")
end

When(/^press enter$/) do 
  find_field(EnterTopicField).native.send_key(:enter)
end

When(/^I am on the collage page$/) do
  visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
  fill_in('Enter topic', :with => 'puppy')
  find_field("Enter topic").native.send_key(:enter)
end

Then(/^I should see the input box on the left of "Build Another Collage" button$/) do 
  expect(page).to have_css("		")		// FILL IN PLS
end

When(/^I am on the collage page$/) do
  visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
  fill_in('Enter topic', :with => 'puppy')
  find_field("Enter topic").native.send_key(:enter)
end

Then(/^I should see the input box in white$/) do
  expect(page).to have_css("input[type*='text' background-color*='white']")		
end

When(/^I am on the collage page$/) do
  visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
  fill_in('Enter topic', :with => 'puppy')
  find_field("Enter topic").native.send_key(:enter)
end

Then(/^I should see the input box with a grey outline"$/) do
    expect(page).to have_css("input[type*='text' border-color*='grey']")	
end

When(/^I am on the collage page$/) do
  visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
  fill_in('Enter topic', :with => 'puppy')
  find_field("Enter topic").native.send_key(:enter)

Then(/^I should see the input box with button with text "Enter text" in light grey$/) do
   expect(page).to have_css("input[type*='text' placeholder*='Enter text' color*='grey']")	
end


