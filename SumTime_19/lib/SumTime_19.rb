require "time"
def sum(time1, time2)
  time1 = Time.parse(time1).strftime("%H:%M:%S")
  time2 = Time.parse(time2).strftime("%H:%M:%S")
  time_pattern = /^([2][0-3]|[0-1][0-9]):[0-5][0-9]:[0-5][0-9]$/
  if time1.match(time_pattern) && time2.match(time_pattern)
    sum = []
    time1 = time1.split(":")
    time2 = time2.split(":")
    sum[2] = time2[2].to_i + time1[2].to_i
    sum[1] = (sum[2].div(60)) + time2[1].to_i + time1[1].to_i
    sum[0] = (sum[1].div(60)) + time2[0].to_i + time1[0].to_i
    day = sum[0].div(24)
    sum[2] = (sum[2].modulo(60))
    sum[1] = (sum[1].modulo(60))
    sum[0] = (sum[0].modulo(24))
    sum[2] = "0" + sum[2].to_s if sum[2].to_s.length == 1
    sum[1] = "0" + sum[1].to_s if sum[1].to_s.length == 1
    sum[0] = "0" + sum[0].to_s if sum[0].to_s.length == 1
    sum = Time.parse(sum.join(":")).strftime("%H:%M:%S")
    a = {}
    a["date"] = sum
    a["days"] = day
    a
  else
    puts "Entered incorrect time format in either of the dates"
    exit(ret = 0)
  end
end
