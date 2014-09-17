
describe Peep do 

	it "can have a message" do
		peep = Peep.new("This is a message")
		expect(peep.message).to eq "This is a message"
	end 

end