require '../lib/power_array'
puts "Enter the power factor"
x = gets
puts "Original Array"
puts a = [1,2,3,4,5,6]
puts "Aftre applying Power Factor"
a.power(x.to_i)