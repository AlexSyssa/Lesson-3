class Route
	attr_reader :route

	def initialize(first_station, last_station)
		@route = [first_station, last_station]
	end
	
	def add_station(station)
		@route.insert(-2,station)
	end

	def delete_stations(station)
		@route.delete_at(-2)
	end

	def all_stations
		@route.each {|station| puts station_names}
	end
end