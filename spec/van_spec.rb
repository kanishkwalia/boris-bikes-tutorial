require 'van'

describe Van do
	let(:van){Van.new}
	let(:bike){double :bike}
	
	it 'can accept a bike' do
		van.accept bike
		expect(van.bikes).to eq [bike]
	end

	it 'can release a bike' do
		van.accept bike
		van.release bike
		expect(van.bikes).to eq []
	end

	it 'raises an error when full' do
		10.times { subject.accept double :bike }
		expect { subject.accept double :bike }.to raise_error "Van full"
	end
end
