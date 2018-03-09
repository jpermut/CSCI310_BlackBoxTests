

When(/^I click on the Export Collage button$/) do 
  find('a[id="download"]').click
end

Then(/^a PNG image of the collage in the collage space should be downloaded to my computer$/) do
  page.response_headers['Content-Disposition'].should include("ambulance")
end
