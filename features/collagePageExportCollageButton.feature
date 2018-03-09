Feature: Collage Page Export Collage Button Functionality

Background:

	Given I am on the collage page 

Scenario: clicking "Export Collage" button downloads a PNG of the collage in the collage space
 
	When I click on the Export Collage button
	Then a PNG image of the collage in the collage space should be downloaded to my computer
	
