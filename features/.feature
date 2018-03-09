Feature: Collage Page Build Collage Button Functionality

Background:

	Given I am on the collage page 

Scenario: clicking "Build Another Collage" button begins collage building process

	When I enter "puppy" in the search box
	And press Build Another Collage
	Then I should see a collage of "puppy" images
