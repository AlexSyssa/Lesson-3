class Station
	attr_accessor :station_names, :trains, :trains_by_type

	def initialize(station_names)
		@station_names = station_names
		@trains = []
		@trains_by_type = {passenger: [], cargo: []}
	end
	
	def add_train(train)
		@trains.push(train)
		if train.type == :passenger
			@trains_by_type[:passenger] << train
		else 
			@trains_by_type[:cargo] << train
		end
	end
	
	def show_trains
		@trains.each {|trains| puts train_number}
	end
	
	def train_dispatch(train)
		@trains.delete(train)
	end
end