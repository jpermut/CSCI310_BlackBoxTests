Feature: Collage Page UI

Background:

	Given I am on the collage page 

Scenario: Page background is white

	Then the collage page background color should be "white"

Scenario: Page title is on top

	Then title should be on top of the page

Scenario: Page title color is correct
	
	Then the page title text color is "black"

Scenario: Page title font size is correct

	Then the title size is "24pt"

Scenario: Page title text is correct 

	Then the title should read "Collage for ambulance"
