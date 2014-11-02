Feature: In order to use chitter as a maker I want to sign up to the service

	Scenario: Signing Up 
		When I am on the homepage
		Then I should see "Welcome to Chitter."
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
		When I go to sign up 
		Then I should see "Welcome to Chitter."
		And I fill in "email" with "test@test.com"
		And I fill in "password" with "oranges"
		And I fill in "password_confirmation" with "bananas"		
		And I press "Submit"
		Then I should not see "Hello test@test.com! thankyou for joining chitter"
		And I should see "Password does not match the confirmation"

	Scenario: Signing up with registered email address
		When I have signed up with test@test.com
		When I go to sign up 
		And I fill in "email" with "test@test.com"
		And I fill in "password" with "different password"
		And I fill in "password_confirmation" with "different password"
		And I fill in "username" with "test2_username"
		And I fill in "name" with "Joe Blogs"
		And I press "Submit"
		Then I should see "This email is already taken"
		

	Scenario: Signing up with registered email address
		When I have signed up with test@test.com
		When I go to sign up 
		And I fill in "email" with "blah@blah.com"
		And I fill in "password" with "different password"
		And I fill in "password_confirmation" with "different password"
		And I fill in "username" with "test_username"
		And I fill in "name" with "Joe Blogs"
		And I press "Submit"
		And I should see "This username is already taken"




