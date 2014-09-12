describe User do 
	it "can be created with an email and password" do 
		ben = User.new(email: "test@test.com", password: "oranges")
		expect(ben.class).to be User
	end
end