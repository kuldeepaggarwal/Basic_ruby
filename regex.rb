def replacer(string)
	regex = /[aeiou]/
	puts string.gsub(regex,"*")
end

puts "Enter a String"
input_string = gets.chomp.downcase
replacer(input_string)
