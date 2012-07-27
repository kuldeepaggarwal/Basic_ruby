class String
	def to_s
		self.swapcase
	end
end

puts "Enter the string"
input_string = gets.chomp
puts input_string.to_s
