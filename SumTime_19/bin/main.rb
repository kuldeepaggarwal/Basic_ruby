require '../lib/SumTime_19'
print "Enter number of dates to be added(minimum 2):"
count = (gets.chomp).to_i
dates = Array.new()
if count < 2
  puts "You have not entered minimum required number of dates"
else
  count.times do |index|
    print "Enter #{index + 1} date([H]H:MM:SS): "
    dates << gets.chomp
  end
  no_of_days = 0
  while dates.length > 1
    date1 = dates.pop
    date2 =dates.pop
    temp_hash = sum(date1, date2)
    no_of_days += temp_hash["days"]
    dates << temp_hash["date"] 
  end
  puts "#{no_of_days} days & #{dates.join(":")}"
end