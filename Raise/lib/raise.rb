class Name 
	attr_writer :firstname, :lastname
	def to_s
		"Firstname: #{@firstname} and Lastname: #{@lastname} has been set"
	end
end