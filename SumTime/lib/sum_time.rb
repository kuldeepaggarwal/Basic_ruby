def sum(time1 = "00:00:00", time2 = "00:00:00")
  time1 = "0" + time1 if time1.index(":") != 2
  time2 = "0" + time2 if time2.index(":") != 2
  time_pattern = /^([2][0-3]|[0-1][0-9]):[0-5][0-9]:[0-5][0-9]$/
  if time1.match(time_pattern) && time2.match(time_pattern)
  	sum = []
  	time1 = time1.split(":")
    time2 = time2.split(":")
    sum[2] = time2[2].to_i + time1[2].to_i
    sum[1] = (sum[2].div(60)) + time2[1].to_i + time1[1].to_i
    sum[0] = (sum[1].div(60)) + time2[0].to_i + time1[0].to_i
    day = sum[0].div(24)
    print day.to_s + " day & " if day > 0
    sum[2] = sum[2].modulo(60)
    sum[1] = sum[1].modulo(60)
    sum[0] = sum[0].modulo(24)
    sum.join(":")
  else
    puts "Entered incorrect time format in either of the dates"
  end
end
