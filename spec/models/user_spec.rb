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



end