
describe Peep do 

	let(:ben) { User.create(email: "test@test.com", password: "oranges")}

	let(:peep) { Peep.new(message: "This is a message")}

	it "can have a message" do
		peep = Peep.new(message: "This is a message")
		expect(peep.message).to eq "This is a message"
	end 

	it "can create a Peep in the database" do 
		peep = Peep.create(user: User.create, message: "This is a message")
		expect(Peep.count).to eq 1 
	end

	it "can have a user" do
		peep.user = ben
		expect(peep.user).to eq ben
	end
end