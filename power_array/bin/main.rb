require '../lib/power_array'
puts "Enter the power factor"
x = gets.chomp.to_i
puts "Original Array"
puts a = [1,2,3,4,5,6]
puts "After applying Power Factor"
a.power!(x)