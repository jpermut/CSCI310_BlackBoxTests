Given(/^I am on the collage page2$/) do 
  visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
  fill_in('Enter topic', :with => 'puppy')
  find_field("Enter topic").native.send_key(:enter)
end

Then(/^I should see the page in white$/) do |arg1|
  expect(page).to have_css("body[background-color*='white']")
end

When(/^I am on the collage page$/) do
  visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
  fill_in('Enter topic', :with => 'puppy')
  find_field("Enter topic").native.send_key(:enter)
end

Then(/^I should see the title on top of the page$/) do 
  expect(page).to have_css("		")	// FILL IN PLS		
end

When(/^I am on the collage page$/) do
  visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
  fill_in('Enter topic', :with => 'puppy')
  find_field("Enter topic").native.send_key(:enter)
end

Then(/^I should see the title in black with "Collage for puppy" with size 24$/) do
  expect(page).to have_css("title[type*='text' color*='black' font-size*='24pt']")	// FILL IN FOR THE WORD PUPPY		
end


