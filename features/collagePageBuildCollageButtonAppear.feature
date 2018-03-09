Feature: Collage Page Build Collage Button Appearance

Background:

	Given I am on the collage page 

Scenario: "Build Another Collage" should appear underneath collage and slghtly to the right of the center 

	Then the button should appear underneath collage and slightly to the right of the center


Scenario: "Build Another Collage" button should display the text "Build Another Collage"

	Then the text inside the button should be "Build Another Collage"

Scenario: "Build Another Collage" should be dark grey in color
 
	Then the button should have a dark grey fill

Scenario: "Build Another Collage" button should have white text

	Then the text inside the button should be in white
