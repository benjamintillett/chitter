describe User do 
	
	let(:ben) { User.create(email: "test@test.com", password: "oranges", password_confirmation: "oranges") }

	it "can be created with an email and password" do 
		expect(ben.class).to be User
	end
	it "knows how many users there are" do 
		ben
		expect(User.count).to eq 1
	end
	it "can create a peep" do 
		ben.create_peep("this is a message")
		expect(Peep.count).to eq 1
	end

	it "can have a gravatar_url" do 
		ben.gravatar_url = "https://avatars.githubusercontent.com/u/4823763?v=2"
		expect(ben.gravatar_url).to eq "https://avatars.githubusercontent.com/u/4823763?v=2"
	end 


end