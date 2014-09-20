
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

When(/^I have signed up with fish@fish\.com$/) do		
	step 'I am on the homepage'
	step 'I follow "Sign Up"'
	step 'I should see "Please fill in your email and a password to sign up for chitter"'
	step 'I fill in "email" with "fish@fish.com"'
	step 'I fill in "password" with "oranges"'
	step 'I fill in "password_confirmation" with "oranges"'
	step 'I fill in "username" with "fish_username"'
	step 'I fill in "name" with "Ben Tillett"'
	step 'I press "Submit"'
	step 'I should see "Hello fish@fish.com! thankyou for joining chitter"'
end

Then(/^I should see the Sign In button$/) do
  expect(page).to have_button("Sign In")
end

When(/^I have signed in with test@test\.com$/) do
		step 'I am on the homepage'
		step 'I fill in "user_email" with "test@test.com"'
		step 'I fill in "user_password" with "oranges"'
		step 'I press "Sign In"'
		step  'I should see "Email: test@test.com"'
end
When(/^I have signed in with fish@fish\.com$/) do
		step 'I am on the homepage'
		step 'I fill in "user_email" with "fish@fish.com"'
		step 'I fill in "user_password" with "oranges"'
		step 'I press "Sign In"'
		step  'I should see "Email: fish@fish.com"'
end

When(/^I have peeped about meat$/) do
		step 'I am on the homepage'
		step 'I should see "Write your peep below"'
		step 'I fill in "peep" with "Thats an awful lot of meat for two fellas"'
		step 'I press "Peep"'
		step 'I should see "Thankyou for Peeping!"'
		step 'I should see "Thats an awful lot of meat for two fellas"'
end

When(/^I have peeped about life$/) do
		step 'I am on the homepage'
		step 'I should see "Write your peep below"'
		step 'I fill in "peep" with "Education is what remains after one has forgotten what one has learned in school"'
		step 'I press "Peep"'
		step 'I should see "Thankyou for Peeping!"'
		step 'I should see "Education is what remains after one has forgotten what one has learned in school"'
end
