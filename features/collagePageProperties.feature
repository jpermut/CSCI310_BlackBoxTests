Feature: Collage Properties

Background:

	Given I am on the collage page 

Scenario: Collage appearance
  Then the collage is the correct appearance

Scenario: Collage sizing
  Then the collage is the correct size

Scenario: search results in Insufficent number of images found
  When I enter "hfdjfha;djha;slkfjas;lkfjdal;" in the search box
  And I press the "Build Another Collage" button
  Then I should see 'Insufficient number of images found' in 18pt font in the collage
