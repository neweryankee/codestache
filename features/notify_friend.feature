Feature: Notify a friend of a helpful code snippet
	In order to spread the wealth of knowledge
	As a developer
	I want to email a link to a helpful code snippet

Scenario: Email link to a code snippet
	Given the following snippets
    | title        | body          |
    | safety first | sudo rm -rf / |
	 When I go to the "sudo rm -rf /" snippet page
	 Then I should see "Tell a friend" within "button"
	  And the "email" field should contain "email"
	 When I fill in "email" with "friend@example.com"
	  And I press "Tell a friend"
	 Then I should be on the "sudo rm -rf /" snippet page
	  And I should see "Email sent to friend@example.com" within "p"
    And "friend@example.com" should receive an email
   When I open the email
   Then I should see "snippet" in the email body
   When I follow "Check it out" in the email
   Then I should see "sudo rm -rf /"
