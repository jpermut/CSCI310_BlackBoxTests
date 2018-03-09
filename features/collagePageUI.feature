Feature: Collage Page UI

Background:

	Given I am on the collage page 

Scenario: Page background is white

	When I load the page
	And check its appearance
	Then I should find the page background to be white

Scenario: Page title is on top

	When I load the page
	And check its title's appearance
	Then I should find the page title to be on top of the page

Scenario: Page title is black in color, of size 24pt and reads "Collage for topic X" where X is the topic searched for

	When I load the page
	And check its title's appearance
	Then I should find the page title textn in black, of size 24pt and should read "Collage for topic X" where X is the topic searched for
