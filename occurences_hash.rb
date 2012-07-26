puts "Enter the string"
string = gets.chomp.downcase
hash_container = Hash.new(0)
string.each_char do |chr| 
	hash_container[chr] += 1 
end
puts hash_container