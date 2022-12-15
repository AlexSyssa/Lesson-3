class Train
	attr_accessor :carriage, :speed, :station
	attr_reader :number, :route, :type
	def initialize(number, carriage, train_type)
		@number = number
		@carriage = carriage.to_i
		@speed = 0
		@type = type
	end
	
	def stop
		@speed = 0
	end
	
	def speed_up
		@speed += 10
	end
	
	def delete_carriage
		@carriage -= 1 if @speed == 0 && @carriage > 0
	end
	
	def add_carriage
		@carriage += 1 if @speed == 0 
	end
	
	def getting_route(route)
		@route = route
		@current_station = @route.station.first_station
	end
	
	def route(route)
		@route = route
		@station = route[0]
	end
	
	def next_station
		if @station == route[0]
		   @station = roate[1]
		elsif @station == route[1]
			@station = route[-1]
		else
			puts "This is a last station"
		end
	end

	def type
		puts "Enter types of train (passenger or cargo)"
		train_type = gets.chomp
	end
end