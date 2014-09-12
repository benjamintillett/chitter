Feature: In order to avoid others to use my account as a maker I want to log out

	Scenario: 
		When I have signed up with test@test.com 
		And I am on the homepage
		And I fill in "user_email" with "test@test.com"
		And I fill in "user_password" with "oranges"
		And I press "Sign In"
		Then I should see "User: test@test.com"  
		Then I press "Sign Out"
		Then I should see the Sign In button
		And I should not see "User: test@test.com"  