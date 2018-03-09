Feature: Collage Page Export Collage Button Functionality

Background:

	Given I am on the collage page 

Scenario: clicking "Export Collage" button downloads a PNG of the collage in the collage space
	When I click on the Export Collage button
	Then a PNG image of the collage in the collage space should be downloaded to my computer

Scenario: "Export Collage" button has correct text color
	Then "Export Collage" button color is "lightgray" 

Scenario: "Export Collage" button has correct text
	Then "Export Collage" button has the text "Export Collage"

Scenario: "Export Collage" button has correct color
	Then "Export Collage" button color is "white"
	
