Feature: Collage Page Input Box Appearance 

Background:

	Given I am on the collage page 


Scenario: Input box should be in correct position

	Then the box should appear underneath collage and to the left of the "Build Another Collage" button

Scenario: input box has correct outline
	Then the input box has a "darkgray" outline 

Scenario: Input box should be white in color

	Then the box should have a white fill

Scenario: Input box should have white placeholder "Enter topic"

	Then the text inside the button should be in white
