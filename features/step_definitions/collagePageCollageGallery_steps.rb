EnterTopicField = "Enter topic"

Given(/^I am on the collage page and there is not enough space to show all the previously generated collages$/) do 
  visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
  fill_in(EnterTopicField, :with => 'ambulance')
  find_field(EnterTopicField).native.send_key(:enter)
  fill_in(EnterTopicField, :with => 'ambulance')	
  find_field(EnterTopicField).native.send_key(:enter)
  fill_in(EnterTopicField, :with => 'ambulance')	
  find_field(EnterTopicField).native.send_key(:enter)
  fill_in(EnterTopicField, :with => 'ambulance')	
  find_field(EnterTopicField).native.send_key(:enter)
  fill_in(EnterTopicField, :with => 'ambulance')	
  find_field(EnterTopicField).native.send_key(:enter)
  fill_in(EnterTopicField, :with => 'ambulance')	
  find_field(EnterTopicField).native.send_key(:enter)
  fill_in(EnterTopicField, :with => 'ambulance')	
  find_field(EnterTopicField).native.send_key(:enter)
  fill_in(EnterTopicField, :with => 'ambulance')	
  find_field(EnterTopicField).native.send_key(:enter)
  fill_in(EnterTopicField, :with => 'ambulance')	
  find_field(EnterTopicField).native.send_key(:enter)
  fill_in(EnterTopicField, :with => 'ambulance')	
  find_field(EnterTopicField).native.send_key(:enter)
end

Then(/^the gallery displays a scroll bar$/) do 
  overflow = find_by_id('GalleryContainer').native.css_value('overflow-x')
  expect(overflow).to eq("scroll")
end
