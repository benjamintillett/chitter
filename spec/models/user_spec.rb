describe User do 
	
	let(:ben) { User.create(email: "test@test.com", password: "oranges", password_confirmation: "oranges") }
	let(:john){ User.create(email: "test2@test2.com", password: "bannas", password_confirmation: "bannas") }

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

	it "can have a avatar_url" do 
		ben.avatar_url = "https://avatars.githubusercontent.com/u/4823763?v=2"
		expect(ben.avatar_url).to eq "https://avatars.githubusercontent.com/u/4823763?v=2"
	end 

	it "knows when it was created" do 
		expect(ben.created_at.sec).to eq DateTime.now.sec
	end


end