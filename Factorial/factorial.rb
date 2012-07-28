def factorial(num)
  fact = 1
  (1..num).each do | value |
    fact *= value
  end
  fact
end
puts "Enter the number:"
input = gets.chomp.to_i
puts "Factorial of #{input} is #{factorial(input)}"