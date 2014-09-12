Feature: In order to use chitter as a maker I want to sign up to the service

	Scenario: Signing Up 
		When I am on the homepage
		And I follow "Sign Up"
		Then I should see "Please fill in your email and a password to sign up for chitter"
		And I fill in "email" with "test@test.com"
		And I fill in "password" with "oranges"
		And I fill in "password_confirmation" with "oranges"
		And I press "Submit"
		Then I should see "Hello test@test.com thankyou for joining chitter"

	Scenario:
		When I have signed up with test@test.com 
		And I am on the homepage
		And I fill in "user_email" with "test@test.com"
		And I fill in "user_password" with "oranges"
		And I press "Sign In"
		Then I should see "User: test@test.com"  


