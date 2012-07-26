puts "Enter a String"
string = gets.chomp.downcase
regex = /[aeiou]/
puts string.gsub(regex,"*")