class Vehicle
	attr_writer :price
	def initialize(name,price)
		@name = name
		@price = price
	end
	def to_s
		"Vehicle : #{@name} and Price : #{@price}"
	end	
end
class Bike < Vehicle
	def initialize(name,price,dealer)
		super(name,price)
		@dealer = dealer
	end
	def to_s
		"Vehicle : #{@name}, Price : #{@price}, and Dealer : #{@dealer}"	
	end	
end