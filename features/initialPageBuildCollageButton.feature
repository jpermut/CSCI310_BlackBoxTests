Feature: Initial Page Build Collage Button Functionality and Appearance 

Background:

	Given I am on the initial page 

Scenario: clicking "Build Collage" button begins collage building process

	When I enter "puppy" in the search box
	And I press the "Build Collage" button
	Then I should see a collage of "puppy" images

Scenario: clicking "Build Collage" button disabled when no input

	When I press the "Build Collage" button
	Then the "Build Collage" button should be static 
