feature 'member of public docks bike' do
	scenario 'docking station unable to receive as full' do
		docking_station = DockingStation.new
		20.times { docking_station.dock Bike.new }
		expect { docking_station.dock Bike.new }.to raise_error 'Station Full'
	end
	scenario 'docking station has custom capacity' do
		docking_station = DockingStation.new({capacity: 50})
		expect(docking_station.capacity).to eq 50
	end
end
