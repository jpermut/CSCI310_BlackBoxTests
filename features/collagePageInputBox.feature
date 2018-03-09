Feature: Collage Page Input Box Functionality and Appearance

Background:

	Given I am on the collage page 

Scenario: collage page input box prompt text disappears

	When I type "p" in the search box
	Then I should see only "p" in the search box

Scenario: Input box should be underneath collage and to the left of the "Build Another Collage" button

	When I am on the collage page
	And look at the input box
	Then the box should appear underneath collage and to the left of the "Build Another Collage" button

Scenario: Input box should have dark grey outline

	When I am on the collage page
	And look at the input box 
	Then the box should possess a dark grey outline

Scenario: Input box should be white in color

	When I am on the collage page
	And look at the input box 
	Then the box should have a white fill

Scenario: Input box should have white placeholder "Enter topic"

	When I am on the collage page
	And look at the "Build Another Collage" button 
	Then the text inside the button should be in white
