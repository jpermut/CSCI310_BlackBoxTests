
Then("the collage is the correct appearance") do
  collage = page.find("#CollageContainer")
  expect(collage.native.css_value("display")).to eq("flex")
  expect(collage.native.css_value("justify-content")).to eq("normal")
end

Then("the collage is the correct size") do
  collage = page.find("#CollageImageContainer")
  expect(collage.native.css_value("min-width")).to eq("800px")
  expect(collage.native.css_value("min-height")).to eq("600px")
  expect(collage.native.css_value("width")).to eq("800px")
  expect(collage.native.css_value("height")).to eq("600px")
end

Then("I should see {string} in {int}pt font in the collage") do |string, int|
  collage = page.find("#CollageImageContainer")
  expect(collage.text.to eq string)
  expect(collage.native.css_value("font-size")).to eq '18px'
end
