
Then("the collage is the correct appearance") do
  collage = page.find("#CollageContainer")
  expect(collage.style("display").to eq("flex"))
  expect(collage.style("justify-content").to eq("flex"))
end

Then("the collage is the correct size") do
  collage = page.find("#CollageImageContainer")
  expect(collage.style("min-width").to eq("800px"))
  expect(collage.style("min-height").to eq("600px"))
  expect(collage.style("width").to eq("60vw"))
  expect(collage.style("height").to eq("45vh"))
end

Then("I should see {string} in {int}pt font in the collage") do |string, int|
  collage = page.find("#CollageImageContainer")
  expect(collage.text.to eq string)
  expect(collage.style("font-size").to eq '18px')
end