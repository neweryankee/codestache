Feature: Share killer code snippet with the world
	In order to demonstrate my skills
	As a developer
	I want to create a web page with a code snippet

Scenario: Visit the home page
	Given I am on the home page
	 Then I should see "New snippet"
	  And I should see "Body" within "label"

Scenario: Create a code snippet
	Given I am on the home page
	 When I fill in "body" with "sudo rm -rf /"
	  And I press "Submit"
	 Then I should see "successfully created" within "p"
	  And I should see "sudo rm -rf /" within "pre code"
	  And I should be on the "sudo rm -rf /" snippet page

Scenario: View a code snippet
	Given a snippet exists with body: "sudo rm -rf /"
	 When I go to the show page for that snippet
	 Then I should see "sudo rm -rf /" within "pre code"
