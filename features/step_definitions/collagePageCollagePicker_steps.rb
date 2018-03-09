Then(/^I should see one collage of "([^"]*)" images in the gallery$/) do |arg1|
  expect(page).to have_css("img[src*='FileHost/#{arg1}/output.png']")
end

Then(/^I should not see the collage of "([^"]*)" images in the gallery$/) do |arg2|
  expect(page).not_to have_css(".GalleryImage", :text => "img[src*='FileHost/#{arg2}/output.png']")
end

When(/^I press the "([^"]*)" collage from the gallery$/) do |arg4|
	find("a[href*='CollageGenerator?SearchBox=#{arg4}']").click
end

Then(/^I should see a collage of "([^"]*)" images in the main collage space$/) do |arg3|
  expect(page).to have_css("img[src*='FileHost/#{arg3}/output.png']")
end


