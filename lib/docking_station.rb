class DockingStation
	DEFAULT_CAPACITY = 20
	attr_reader :bikes
	attr_writer :capacity

	def initialize (options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@bikes = []
	end
  
	def capacity
		@capacity
	end

	def dock bike
	  fail "Station Full" if full?
	  bikes << bike
	  nil
	end

	def release_bike
		fail "No bikes available" if empty?
		bikes.pop
	end
	
	def full?
		bikes.length >= 20
	end

	def empty?
		bikes.reject(&:broken?).length == 0
	end

end