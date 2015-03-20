require 'garage'

describe Garage do
	let(:garage){Garage.new}
	let(:bike){double :bike}
	
	it 'can accept a bike' do
		garage.accept bike
		expect(garage.bikes).to eq [bike]
	end

	it 'can release a bike' do
		garage.accept bike
		garage.release bike
		expect(garage.bikes).to eq []
	end

	it 'raises an error when full' do
		50.times { subject.accept double :bike }
		expect { subject.accept double :bike }.to raise_error "Garage full"
  end

end
