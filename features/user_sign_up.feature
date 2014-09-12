Feature: In order to use chitter as a maker I want to sign up to the service

	Scenario: Signing Up 
		When I am on the homepage
		And I follow "Sign Up"
		Then I should see "Please fill in your email and a password to sign up for chitter"
		And I fill in "email" with "test@test.com"
		And I fill in "password" with "oranges"
		And I fill in "password confirmation" with "oranges"
		And I press "Submit"
	