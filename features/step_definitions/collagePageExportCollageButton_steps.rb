ExportButtonName = "Export Collage"
ExportTextColor = "rgb(169, 169, 169) none repeat scroll 0% 0% / auto padding-box border-box"
ExportText = ""
ExportButtonColor = "rgb(169, 169, 169) none repeat scroll 0% 0% / auto padding-box border-box"

When(/^I click on the Export Collage button$/) do 
  find('a[id="download"]').click
end

Then(/^a PNG image of the collage in the collage space should be downloaded to my computer$/) do
  page.response_headers['Content-Disposition'].should include("ambulance")
end

Then(/^"([^"]*)" button text color is "([^"]*)"$/) do |arg1, arg2|
	arg1 = ExportButtonName
	arg2 = ExportTextColor
  	color = find_by_id('ExportButton').native.css_value('color')
	expect(color).to eq(arg2)
end

Then(/^"([^"]*)" button has the text "([^"]*)"$/) do |arg1, arg2|
	arg1 = ExportButtonName
	arg2 = ExportText

	html = page.evaluate_script("document.getElementById('ExportButton').innerHTML")
	html.should include(ExportText)
end


Then(/^"([^"]*)" button color is "([^"]*)"$/) do |arg1, arg2|
	arg1 = ExportButtonName
	arg2 = ExportButtonColor
	color = find_by_id('ExportButton').native.css_value('background')
	expect(color).to eq(arg2)
end

