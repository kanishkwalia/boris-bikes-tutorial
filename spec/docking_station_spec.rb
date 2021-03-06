require 'docking_station'

describe DockingStation do
	it 'releases bikes that are not broken' do
		subject.dock double :bike, broken?: false
		bike = subject.release_bike
		expect(bike).not_to be_broken
	end
	it 'can dock a bike' do
		bike = :bike
		docking_station = DockingStation.new
		docking_station.dock bike
		#try to get rid of first
		expect(docking_station.bikes.first).to be bike
	end
	it 'raises an error when full' do
		20.times { subject.dock double :bike }
		expect { subject.dock double :bike }.to raise_error 'Station Full'
	end
	it 'does not release broken bikes' do
		broken_bike = double :bike, broken?: true
		subject.dock broken_bike
		expect { subject.release_bike }.to raise_error 'No bikes available'
	end
end
