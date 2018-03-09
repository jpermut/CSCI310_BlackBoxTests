PageColor = "rgb(211, 211, 211) none repeat scroll 0% 0% / auto padding-box border-box"
OutlineColor = "1px solid rgb(169, 169, 169)"
InputBoxColor = "rgba(211, 211, 211, 1)"
InputTextColor = "rgba(211, 211, 211, 1)"
PromptText = "Enter topic"
SearchButtonTextColor = "rgba(255, 255, 255, 1)"
SearchButtonLabel = "Build Collage"
SearchButtonColor = "rgb(169, 169, 169) none repeat scroll 0% 0% / auto padding-box border-box"



Given(/^I am on the initial page$/) do
	visit "http://localhost:8080/myCollageGenerator/SearchPage.jsp"
end

Then(/^the initial page background color should be "([^"]*)"$/) do |arg1|
	arg1 = PageColor
	color = find('body').native.css_value('background')
	expect(color).to eq(arg1)
end

Then(/^the input box has a "([^"]*)" outline$/) do |arg1|
  	arg1 = OutlineColor
	color = find_field('SearchBox').native.css_value('border')
	expect(color).to eq(arg1)
end

Then(/^the input box is centered in the middle of the page$/) do
	boxPos = page.driver.evaluate_script <<-EOS
  		function() {
    			var ele  = document.getElementById('SearchBox');
    			var rect = ele.getBoundingClientRect();
    			return [rect.left, rect.top];
  		}();
	EOS
	
	expect(boxPos[0]).to eq(337.5)
	expect(boxPos[1]).to eq(247)
end

Then(/^input box text color is "([^"]*)"$/) do |arg1|
  	arg1 = InputTextColor
	color = find_field('SearchBox').native.css_value('color')
	expect(color).to eq(arg1)
end

Then(/^input box has the prompt text "([^"]*)"$/) do |arg1|
	arg1 = PromptText
	text = find_field('SearchBox')['placeholder']
	expect(text).to eq(PromptText)
end

Then(/^the input box color is "([^"]*)"$/) do |arg1|
  	arg1 = InputBoxColor
	color = find_field('SearchBox').native.css_value('color')
	expect(color).to eq(arg1)
end

Then(/^Build Collage button is labeled with "([^"]*)" text that says "([^"]*)"$/) do |arg1, arg2|
  	arg1 = SearchButtonTextColor
	color = find_button('SearchButton').native.css_value('color')
	expect(color).to eq(arg1)
  	arg2 = SearchButtonLabel
	buttonLabel = find_button('SearchButton')['value']
	expect(buttonLabel).to eq(arg2)
end


Then(/^Build Collage button color is "([^"]*)"$/) do |arg1|
  	arg1 = SearchButtonColor
	color = find_button('SearchButton').native.css_value('background')
	expect(color).to eq(arg1)
end

Then(/^Build Collage button is to the right of the input box$/) do
	buttonPos = page.driver.evaluate_script <<-EOS
  		function() {
    			var ele  = document.getElementById('SearchButton');
    			var rect = ele.getBoundingClientRect();
    			return [rect.left, rect.top];
  		}();
	EOS

	boxPos = page.driver.evaluate_script <<-EOS
  		function() {
    			var ele  = document.getElementById('SearchBox');
    			var rect = ele.getBoundingClientRect();
    			return [rect.left, rect.top];
  		}();
	EOS
	
	expect(boxPos[0] < buttonPos[0]).to be(true) 
end


