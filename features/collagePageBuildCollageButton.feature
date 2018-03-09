Feature: Collage Page Build Collage Button Functionality and Appearance

Background:

	Given I am on the collage page 

Scenario: clicking "Build Another Collage" button begins collage building process for valid search query

	When I enter "puppy" in the search box
	And I press the "Build Another Collage" button
	Then I should see a collage of "puppy" images

Scenario: clicking "Build Another Collage" button doesn't begin collage building process for invalid search query 

	When I enter "lfjdsghsfldgjh" in the search box
	And I press the "Build Another Collage" button
	Then I should see the text "Insufficient number of images found" in the collage space
	
Scenario: clicking "Build Another Collage" button disabled when no input

	When I leave the search box empty
	And press Build Another Collage
	Then the button should be static and unresponsive

Scenario: "Build Another Collage" should appear underneath collage and slghtly to the right of the center 

	When I am on the collage page
	And look at the "Build Another Collage" button 
	Then the button should appear underneath collage and slghtly to the right of the center


Scenario: "Build Another Collage" button should display the text "Build Another Collage"

	When I am on the collage page
	And look at the "Build Another Collage" button 
	Then the text inside the button should be "Build Another Collage"

Scenario: "Build Another Collage" should be dark grey in color

	When I am on the collage page
	And look at the "Build Another Collage" button 
	Then the button should have a dark grey fill

Scenario: "Build Another Collage" button should have white text

	When I am on the collage page
	And look at the "Build Another Collage" button 
	Then the text inside the button should be in white
