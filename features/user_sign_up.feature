Feature: In order to use chitter as a maker I want to sign up to the service

	Scenario: Signing Up 
		When I am on the homepage
		And I follow "Sign Up"
		Then I should see "Please fill in your email and a password to sign up for chitter"
		And I fill in "email" with "test@test.com"
		And I fill in "password" with "oranges"
		And I fill in "password_confirmation" with "oranges"
		And I fill in "username" with "test_username"
		And I fill in "name" with "Ben Tillett"
		And I press "Submit"
		Then I should see "Hello test@test.com! thankyou for joining chitter"
		And I should see "Ben Tillett"
		And I should see "test_username"



	Scenario: Signing up with mismatching passwords
		When I am on the homepage
		And I follow "Sign Up"
		Then I should see "Please fill in your email and a password to sign up for chitter"
		And I fill in "email" with "test@test.com"
		And I fill in "password" with "oranges"
		And I fill in "password_confirmation" with "bananas"		
		And I press "Submit"
		Then I should not see "Hello test@test.com! thankyou for joining chitter"
		And I should see "Your passwords don't match"


