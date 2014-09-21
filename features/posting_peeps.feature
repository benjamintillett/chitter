Feature: In order to let people know what I am doing as a maker I want to post a message to chitter

	Scenario: Peeping from the profile panel
		When I have signed up with test@test.com
		And I fill in "profile-tweet-input" with "Omfg this is my first peep"
		And I press "profile-tweet-submit"
		Then I should see "Thankyou for Peeping!"
		And I should see "Omfg this is my first peep"

	Scenario: Peeping from the modal
		When I have signed up with test@test.com
		And I fill in "modal-tweet-input" with "Omfg this is my first peep"
		And I press "modal-tweet-submit"
		Then I should see "Thankyou for Peeping!"
		And I should see "Omfg this is my first peep"