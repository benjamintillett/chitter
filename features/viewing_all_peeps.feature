Feature: In order know what other maker are doing I want to be able to see all peeps

	Scenario: viewing others peoples peeps 
	When I have signed up with test@test.com
	And I have peeped about life
	And I press "Sign Out"
	And I have signed up with fish@fish.com
	And I have peeped about meat
	And I go to the homepage
	Then I should see "Thats an awful lot of meat for two fellas"
	And I should see "Education is what remains after one has forgotten what one has learned in school"
