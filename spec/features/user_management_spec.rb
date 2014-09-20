require 'spec_helper'

require_relative 'helpers/user_helper.rb'


include UserHelpers

feature "user signs up" do 

	scenario "when opening the home page" do
	    visit 'users/new'
	    expect(page).to have_content("Password Confirmation")

	end

	scenario "with valid details" do 
		sign_up
		expect(User.count).to eq 1  
	end
end 