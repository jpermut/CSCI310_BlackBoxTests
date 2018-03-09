Feature: Previous Collage Picker Functionality

Background:

	Given I am on the collage page 

Scenario: the collage gallery shows scaled down versions of all the collages generated in the session by the user
 
	When I enter "puppy" in the search box
	And I press the "Build Another Collage" button
	Then I should see one collage of "ambulance" images in the gallery 
	
Scenario: the collage gallery doesn't show the collage image currently in the main collage space

	When I enter "puppy" in the search box
	And I press the "Build Another Collage" button
	Then I should not see the collage of "puppy" images in the gallery

Scenario: 
