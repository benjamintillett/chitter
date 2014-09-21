Feature: In order to user chitter as a maker I want to log in	

	Scenario: Signing in 
		When I have signed up with test@test.com 
		And I am on the homepage
		And I press "Sign Out"
		And I fill in "user_email" with "test@test.com"
		And I fill in "user_password" with "oranges"
		And I press "Sign In"
		Then I should see "@test_username"  

	Scenario: Signing in with an unregistered email
		When I have signed up with test@test.com 
		When I am on the homepage
		And I press "Sign Out"
		And I fill in "user_email" with "invalid.com"
		And I fill in "user_password" with "wrong password"
		And I press "Sign In"
		Then I should see "You entered an invalid username/password"

		Scenario: Signing in with a invalid password
		When I have signed up with test@test.com 
		When I am on the homepage
		And I press "Sign Out"
		And I fill in "user_email" with "test@test.com"
		And I fill in "user_password" with "wrong password"
		And I press "Sign In"
		Then I should see "You entered an invalid username/password"

