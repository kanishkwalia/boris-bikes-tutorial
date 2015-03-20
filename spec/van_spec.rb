require 'van'

describe Van do
	let(:van){Van.new}
	let(:bike){double :bike}
	
	it 'can load a bike' do
		van.load bike
		expect(van.bikes).to eq [bike]
	end
end
