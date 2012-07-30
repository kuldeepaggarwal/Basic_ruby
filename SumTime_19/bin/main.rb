require '../lib/SumTime_19'
print "Enter number of 'time(s)' to be added(minimum 2):"
count = (gets.chomp).to_i
times = Array.new()
if count < 2
  puts "You have not entered minimum required number of times"
else
  count.times do |index|
    print "Enter #{index + 1} time([H]H:MM:SS): "
    times << gets.chomp
  end
  no_of_days = 0
  while times.length > 1
    time1 = times.pop
    time2 =times.pop
    temp_hash = sum(time1, time2)
    no_of_days += temp_hash["days"]
    times << temp_hash["times"] 
  end
  puts "#{no_of_days} days & #{dates.join(":")}"
end