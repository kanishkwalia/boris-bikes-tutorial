class Van

	DEFAULT_CAPACITY = 10

	attr_writer :capacity
	attr_reader :bikes

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@bikes = []
	end

	def accept bike
		fail "Van full" if full?
		bikes << bike
	end

	def release bike
		bikes.delete bike
	end

	def full?
		bikes.length >= 10
	end
end
