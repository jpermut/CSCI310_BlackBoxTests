Given(/^I am on the initial page$/) do 
  visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
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
 
When(/^I am on the Search Page$/) do
  visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
end

When(/^press Build Another Collage with '' input$/) do
  find_field("Enter topic").native.send_key(:enter)
end

Then(/^I should not see a collage$/)
  expect(page).to have_css("button[disabled]")
end
