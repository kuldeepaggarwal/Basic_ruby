require "../factorial_exception"

print "Enter the number: "
input = gets.chomp.to_i
puts "Factorial of #{input} is #{factorial(input)}"