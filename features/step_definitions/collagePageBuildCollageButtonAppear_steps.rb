Then(/^I should see the "Build Another Collage" button with text "Build Another Collage"$/) do
  expect(page).to have_css("button[name*='Build Another Collage']")		
end

Then(/^I should see the "Build Another collage" in grey$/) do
  expect(page).to have_css("button[name*='Build Another Collage' background-color*='grey']")		
end

Then(/^I should see the "Build Another Collage" button in white text$/) do
  expect(page).to have_css("button[name*='Build Another Collage' background-color*='grey' color*='white' ]")		
end

#Then(/^I should see the "Build Another Collage" button underneath the collage$/) do 
  #expect(page).to have_css("		")		// FILL IN PLS
#end

Then(/^the button should be static and unresponsive$/)
  expect(page).to have_css("button[name*='Build Another Collage' disabled]")
end


