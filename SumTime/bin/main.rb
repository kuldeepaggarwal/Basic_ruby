require '../lib/sum_time'
print "Enter first time ([H]H:MM:SS):"
time1 = gets.chomp
print "Enter first time ([H]H:MM:SS):"
time2 = gets.chomp
puts sum(time1, time2)