When(/^I have signed up with test@test\.com$/) do		
	step 'I am on the homepage'
	step 'I follow "Sign Up"'
	step 'I should see "Please fill in your email and a password to sign up for chitter"'
	step 'I fill in "email" with "test@test.com"'
	step 'I fill in "password" with "oranges"'
	step 'I fill in "password_confirmation" with "oranges"'
	step 'I fill in "username" with "test_username"'
	step 'I fill in "name" with "Ben Tillett"'
	step 'I press "Submit"'
	step 'I should see "Hello test@test.com! thankyou for joining chitter"'
end

Then(/^I should see the Sign In button$/) do
  expect(page).to have_button("Sign In")
end