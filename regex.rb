def replacer(string)
  regex = /[aeiou]/i
  puts string.gsub(regex,"*")
end
puts "Enter a String"
input_string = gets.chomp
replacer(input_string)
