Feature: Collage Page Input Box Functionality 

Background:

	Given I am on the collage page 

Scenario: collage page input box prompt text disappears

	When I type "p" in the search box
	Then I should see only "p" in the search box

Scenario: pressing enter in input box triggers collage build process

	When I type "puppy" in the search box
	And press enter
	Then I should see a collage of "puppy" images


