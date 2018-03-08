
Then("the collage is the correct appearance") do
  collage = page.find("#CollageContainer")
  expect(collage[:style].to eq "")
end

Then("the collage is the correct size") do
  collage = page.find("#CollageImageContainer")
  expect(collage[:style].to eq "")
end

Then("I should see {string} in {int}pt font in the collage") do |string, int|
  collage = page.find("#CollageImageContainer")
  expect(collage.text.to eq string)
  expect(collage.style("font-size").to eq '18px')
end