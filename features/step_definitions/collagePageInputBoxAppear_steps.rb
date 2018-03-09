#Then(/^I should see the input box on the left of "Build Another Collage" button$/) do 
 # expect(page).to have_css("		")		// FILL IN PLS
#end

Then(/^I should see the input box in white$/) do
  expect(page).to have_css("input[type*='text' background-color*='white']")		
end

Then(/^I should see the input box with a grey outline"$/) do
    expect(page).to have_css("input[type*='text' border-color*='grey']")	
end

Then(/^I should see the input box with button with text "Enter text" in light grey$/) do
   expect(page).to have_css("input[type*='text' placeholder*='Enter text' color*='grey']")	
end


