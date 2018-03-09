Feature: Collage Page Input Box Appearance 

Background:

	Given I am on the collage page 


Scenario: Input box should be underneath collage and to the left of the "Build Another Collage" button

	Then the box should appear underneath collage and to the left of the "Build Another Collage" button

Scenario: input box has correct outline
	Then the input box has a "darkgray" outline 

Scenario: input box has correct prompt text color
	Then input box text color is "lightgray" 

Scenario: input box has correct prompt text
	Then input box has the prompt text "Enter topic"

Scenario: input box has correct color
	Then the input box color is "white"
