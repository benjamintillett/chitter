describe User do 
	it "can be created with an email and password" do 
		ben = User.create(email: "test@test.com", password: "oranges")
		expect(ben.class).to be User
	end
	it "knows how many users there are" do 
		ben = User.create(email: "test@test.com", password: "oranges")
		expect(User.count).to eq 1
	end

end