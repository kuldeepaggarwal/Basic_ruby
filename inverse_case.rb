puts "Enter the string"
string = gets.chomp

class String
	def to_s
		self.each_char do |chr|
			if chr == chr.upcase
			  @string = "#{@string}"+ "#{chr.downcase}"
			else
				@string ="#{@string}"+ "#{chr.upcase}"
			end
		end
		@string
	end
end
puts string.to_s