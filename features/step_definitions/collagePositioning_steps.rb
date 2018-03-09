Then(/^the collage should be centered$/) do
  collagePos = page.driver.evaluate_script <<-EOS
  		function() {
    			var ele  = document.getElementById('CollageImageContainer');
    			var rect = ele.getBoundingClientRect();
    			return [rect.left, rect.top];
  		}();
  EOS
  expect(collagePos[0]).to eq(-1)
  expect(collagePos[1]).to eq(35)
end

