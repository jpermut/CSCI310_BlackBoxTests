Feature: Initial Page Build Collage Button Functionality and Appearance 

Background:

	Given I am on the initial page 

Scenario: clicking "Build Collage" button begins collage building process

	When I enter "puppy" in the search box
	And press Build Another Collage
	Then I should see a collage of "puppy" images

Scenario: clicking "Build Collage" button disabled when no input

	When I leave the search box empty
	And press Build Another Collage
	Then the button should be static and unresponsive
