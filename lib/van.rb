class Van

	DEFAULT_CAPACITY = 10

	attr_writer :capacity
	attr_reader :bikes

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@bikes = []
	end

	def load bike
		bikes << bike
	end

end
