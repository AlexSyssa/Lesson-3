=begin
Класс Route (Маршрут):
Имеет начальную и конечную станцию, а также список промежуточных станций. Начальная и конечная станции указываютсся при создании маршрута, а промежуточные могут добавляться между ними.
Может добавлять промежуточную станцию в список
Может удалять промежуточную станцию из списка
Может выводить список всех станций по-порядку от начальной до конечной
=end

class Route
	attr_reader :route

	def initialize(first_station, last_station)
		@route = [first_station, last_station]
	end
	
	#Может добавлять промежуточную станцию в список
	def add_station(station)
		@route.insert(-2,station)
	end

	#Может удалять промежуточную станцию из списка
	def delete_stations(station)
		@route.delete_at(-2)
	end

	#Может выводить список всех станций по-порядку от начальной до конечной
	def all_stations
		@route.each {|station| puts station}
	end
end