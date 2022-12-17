=begin
Класс Train (Поезд):
Имеет номер (произвольная строка) и тип (грузовой, пассажирский) и количество вагонов, эти данные указываются при создании экземпляра класса
Может набирать скорость
Может возвращать текущую скорость
Может тормозить (сбрасывать скорость до нуля)
Может возвращать количество вагонов
Может прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов). Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
Может принимать маршрут следования (объект класса Route). 
При назначении маршрута поезду, поезд автоматически помещается на первую станцию в маршруте.
Может перемещаться между станциями, указанными в маршруте. Перемещение возможно вперед и назад, но только на 1 станцию за раз.
Возвращать предыдущую станцию, текущую, следующую, на основе маршрута
=end

class Train
	attr_accessor :carriage, :speed, :station, :route_station, :current_station_index 
	attr_reader :number, :route, :type
	def initialize(number, carriage, type)
		@number = number
		@carriage = carriage.to_i
		@speed = 0
		@type = type.to_s
		@current_station_index = 0
	end
	
	#Может набирать скорость
	def speed_up(value)
		@speed += value
		puts "speed: #{@speed}"
	end

	#Может возвращать текущую скорость
	def speed
		puts "speed: #{@speed}"
	end


	#Может тормозить (сбрасывать скорость до нуля)
	def stop
		@speed = 0
		puts "speed: #{@speed}"
	end

	#Может возвращать количество вагонов
	def size
		puts "carriage: #{@carriage}"
	end
	
	#Может прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов). 
	#Прицепка/отцепка вагонов может осуществляться только если поезд не движется.	
	def delete_carriage
		@carriage -= 1 if @speed == 0 && @carriage > 0
		puts "carriage: #{@carriage}"
	end
	
	def add_carriage
		@carriage += 1 if @speed == 0 
		puts "carriage: #{@carriage}"
	end
	
	#Может принимать маршрут следования (объект класса Route). 
	#При назначении маршрута поезду, поезд автоматически помещается на первую станцию в маршруте.
	def getting_route(route)
		@route = route
		@current_station_index = 0
		puts "Первая станция в маршруте #{@route_station[@current_station_index]}"
	end
	
	#Может перемещаться между станциями, указанными в маршруте. Перемещение возможно вперед и назад, но только на 1 станцию за раз.
	def next_station
		if @current_station_index == 0
			@current_station_index == 1
		elsif @current_station_index == 1
			@current_station_index == -1
		else
			puts "This is a last station"
		end
		puts @route.station[@current_station_index]
	end
	
	#Возвращать предыдущую станцию, текущую, следующую, на основе маршрута
	def previous_station
		if @current_station_index == -1
			@current_station_index == 1
		elsif @current_station_index == 1
			@current_station_index == 0
		else
			puts "This is a first station"
		end
		puts @route.station[@current_station_index]
	end

	def type
		puts "Enter types of train (passenger or cargo)"
		type = gets.chomp.to_s
	end

end