TextColor = "rgba(255, 255, 255, 1)"
ButtonColor = "rgb(169, 169, 169) none repeat scroll 0% 0% / auto padding-box border-box"
ButtonText = "Build Another Collage"

Then(/^the button should appear underneath collage and slightly to the right of the center$/) do
	buttonPos = page.driver.evaluate_script <<-EOS
  		function() {
    			var ele  = document.getElementById('SearchButton');
    			var rect = ele.getBoundingClientRect();
    			return [rect.left, rect.top];
  		}();
	EOS
	collagePos = page.driver.evaluate_script <<-EOS
  		function() {
    			var ele  = document.getElementById('CollageImageContainer');
    			var rect = ele.getBoundingClientRect();
    			return [rect.left, rect.top];
  		}();
	EOS


	expect(collagePos[1] < buttonPos[1]).to be(true)
	expect(buttonPos[0] >= 438).to be(true)
end

Then(/^the text inside the button should be "([^"]*)"$/) do |arg1|
  	arg1 = ButtonText
	buttonLabel = find_button('SearchButton')['value']
	expect(buttonLabel).to eq(arg1)
end

Then(/^the button should be "([^"]*)"$/) do |arg1|
  	arg1 = ButtonColor
	color = find_button('SearchButton').native.css_value('background')
	expect(color).to eq(arg1)
end

Then(/^the button text color should be "([^"]*)"$/) do |arg1|
  	arg1 = TextColor
	color = find_button('SearchButton').native.css_value('color')
	expect(color).to eq(arg1)
end

