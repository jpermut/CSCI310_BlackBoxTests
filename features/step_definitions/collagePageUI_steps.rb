CollagePageColor = "rgb(255, 255, 255) none repeat scroll 0% 0% / auto padding-box border-box"
TitleTextColor = "rgba(0, 0, 0, 1)"
TitleTextSize = ("24px")
TitleText = ("Collage for topic ambulance")
TitleExpectation = 'Collage for topic ambulance'

Then(/^the collage page background color should be "([^"]*)"$/) do |arg1|
  	arg1 = CollagePageColor
	color = find('body').native.css_value('background')
	expect(color).to eq(arg1)
end

Then(/^title should be on top of the page$/) do
        titlePos = page.driver.evaluate_script <<-EOS
  		function() {
    			var ele  = document.getElementById('Title');
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
	expect(titlePos[1] < collagePos[1]).to be(true)
end

Then(/^the page title text color is "([^"]*)"$/) do |arg1|
    	arg1 = TitleTextColor
	color = find_by_id('Title').native.css_value('color')
	expect(color).to eq(arg1)
end

Then(/^the title size is "([^"]*)"$/) do |arg1|
    	arg1 = TitleTextSize
	size = find_by_id('Title').native.css_value('font-size')
	expect(size).to eq(arg1)
end

Then(/^the title should read "([^"]*)"$/) do |arg1|
	title = TitleText
	html = page.evaluate_script("document.getElementById('Title').innerHTML")
	html.should include(TitleExpectation)
end

