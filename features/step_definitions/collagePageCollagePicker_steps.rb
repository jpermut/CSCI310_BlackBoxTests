Then(/^I should see one collage of "([^"]*)" images in the gallery$/) do |arg1|
  #page.find('div.a#GalleryContainer.GalleryImage').should have_css("img[src*=FileHost/#{arg1}/output.png]")
  expect(page).to have_css("img[src*='FileHost/#{arg1}/output.png']")
end
Then(/^I should not see the collage of "([^"]*)" images in the gallery$/) do |arg2|
  expect(page).not_to have_css(".GalleryImage", :text => "img[src*='FileHost/#{arg2}/output.png']")
end


