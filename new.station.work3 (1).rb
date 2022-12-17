=begin
Класс Station (Станция):
Имеет название, которое указывается при ее создании
Может принимать поезда (по одному за раз)
Может возвращать список всех поездов на станции, находящиеся в текущий момент
Может возвращать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции). 
=end
class Station
	attr_accessor :station_names, :trains, :trains_by_type

	def initialize(station_names)
		@station_names = station_names
		@trains = []
		@trains_by_type = {passenger: [], cargo: []}
	end
	
#Может принимать поезда (по одному за раз)	

	def add_train(train)
		@trains.push(train)
		if train.type == :passenger
			@trains_by_type[:passenger] << train
		else 
			@trains_by_type[:cargo] << train
		end
	end
	
	# Может возвращать список всех поездов на станции, находящиеся в текущий момент
	
	def output_trains
		@trains.each {|trains| puts train_number}
	end
	
	# !!!!Может возвращать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
	def output_passenger
		puts @trains_by_type[:passenger]
	end
	def output_cargo
		puts @trains_by_type[:cargo]
	end

	# Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции
	
	def train_dispatch(train)
		@trains.delete(train)
	end
end