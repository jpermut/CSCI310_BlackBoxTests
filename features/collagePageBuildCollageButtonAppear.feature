Feature: Collage Page Build Collage Button Appearance

Background:

	Given I am on the collage page 

Scenario: "Build Another Collage" is in correct position

	Then the button should appear underneath collage and slightly to the right of the center


Scenario: "Build Another Collage" button should display correct text

	Then the text inside the button should be "Build Another Collage"

Scenario: "Build Another Collage" button should be correct color
 
	Then the button should be "darkgray"

Scenario: "Build Another Collage" text color should be correct

	Then the button text color should be "white"
