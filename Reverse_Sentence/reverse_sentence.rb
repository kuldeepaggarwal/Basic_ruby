def reverse(input_string)
  puts input_string.split(" ").reverse().join(" ")
end
puts "Enter the String"
input_string = gets.chomp
reverse(input_string)