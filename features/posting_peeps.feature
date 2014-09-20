Feature: In order to let people know what I am doing as a maker I want to post a message to chitter

	Scenario: Peeping
		When I have signed up with test@test.com
		And I have signed in with test@test.com
		Then I should see "Write your peep below"
		And I fill in "peep" with "Omfg this is my first peep"
		And I press "Peep"
		Then I should see "Thankyou for Peeping!"
		And I should see "Omfg this is my first peep"