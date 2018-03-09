

When(/^I click on the Export Collage button$/) do 
  find('a[id="download"]').click
end

Then(/^a PNG image of the collage in the collage space should be downloaded to my computer$/) do
  expect( DownloadHelpers::download_content ).to include "FileHost/ambulance/output.png"
end
