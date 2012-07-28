def replacer(string)
  regex = /[aeiou]/
  puts string.downcase.gsub(regex,"*")
end
puts "Enter a String"
input_string = gets.chomp
replacer(input_string)
