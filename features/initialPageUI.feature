Feature: UI of the initial page

Background:

	Given I am on the initial page

Scenario: correct page background color
	Then the initial page background color should be "lightgray"

Scenario: input box has correct outline
	Then the input box has a "darkgray" outline 

Scenario: input box is centered
	Then the input box is centered in the middle of the page 

Scenario: input box has correct prompt text color
	Then input box text color is "lightgray" 

Scenario: input box has correct prompt text
	Then input box has the prompt text "Enter topic"

Scenario: input box has correct color
	Then the input box color is "white"

Scenario: Build Collage button has correct text
	Then Build Collage button is labeled with "white" text that says "Build Collage" 

Scenario: Build Collage button has correct color
	Then Build Collage button color is "darkgray"

Scenario: Build Collage button has correct position
	Then Build Collage button is to the right of the input box



