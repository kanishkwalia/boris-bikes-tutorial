class Garage

	DEFAULT_CAPACITY = 50

	attr_writer :capacity
	attr_reader :bikes

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@bikes = []
	end

	def accept bike
		fail "Garage full" if full?
		bikes << bike
	end

	def release bike
		bikes.delete bike
	end

	def full?
		bikes.length >= 50
	end
end
