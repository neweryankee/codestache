Feature: Share killer code snippet with the world
	In order to demonstrate my skills
	As a developer
	I want to create a web page with a code snippet

Scenario: Visit the home page
	Given I am on the home page
	 Then I should see "New snippet"	
	  And I should see "Title" within "label[for=snippet_title]"
	  And I should see "Body" within "label[for=snippet_body]"

Scenario: Create a code snippet
	Given I am on the home page
	 When I fill in "title" with "safety first"
	 When I fill in "body" with "sudo rm -rf /"
	  And I press "Submit"
	 Then I should see "successfully created" within "p"
	  And I should see "safety first" within "h1"
	  And I should see "sudo rm -rf /" within "pre code"
	  And I should be on the "sudo rm -rf /" snippet page

Scenario: View a code snippet
	Given the following snippets
    | title        | body          |
    | safety first | sudo rm -rf / |
	 When I go to the "sudo rm -rf /" snippet page
	 Then I should see "safety first" within "h1"
	  And I should see "sudo rm -rf /" within "pre code"
