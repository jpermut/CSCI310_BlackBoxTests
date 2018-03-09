
Then(/^the box should appear underneath collage and to the left of the "([^"]*)" button$/) do |arg1|
	inputBoxPos = page.driver.evaluate_script <<-EOS
  		function() {
    			var ele  = document.getElementById('SearchInput');
    			var rect = ele.getBoundingClientRect();
    			return [rect.left, rect.top];
  		}();
	EOS
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


	expect(collagePos[1] < inputBoxPos[1]).to be(true)
	expect(inputBoxPos[0] < buttonPos[0]).to be(true)
end




