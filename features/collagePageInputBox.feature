Feature: Collage Page Input Box Functionality

Background:

	Given I am on the collage page2 

Scenario: collage page input box prompt text disappears

	When I type "p" in the search box
	Then I should see only "p" in the search box
