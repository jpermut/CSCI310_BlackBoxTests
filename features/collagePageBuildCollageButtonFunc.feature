Feature: Collage Page Build Collage Button Functionality 

Background:

	Given I am on the collage page 

Scenario: clicking "Build Another Collage" button begins collage building process for valid search query

	When I enter "puppy" in the search box
	And I press the "Build Another Collage" button
	Then I should see a collage of "puppy" images

Scenario: clicking "Build Another Collage" button doesn't begin collage building process for invalid search query 

	When I enter "lfjdsghsfldgjh" in the search box
	And I press the "Build Another Collage" button
	Then I should see the text "Insufficient number of images found" in the collage space
	
Scenario: the "Build Another Collage" button disabled when no input
	Then the "Build Another Collage" button should be unresponsive


