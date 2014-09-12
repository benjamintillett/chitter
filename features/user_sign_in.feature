Feature: In order to user chitter as a maker I want to log in	

	Scenario: Signing in 
		When I have signed up with test@test.com 
		And I am on the homepage
		And I fill in "user_email" with "test@test.com"
		And I fill in "user_password" with "oranges"
		And I press "Sign In"
		Then I should see "User: test@test.com"  

