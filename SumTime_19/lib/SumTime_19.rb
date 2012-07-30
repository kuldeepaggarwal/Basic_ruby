require "time"
def sum(time1, time2)
  time1 = Time.parse(time1)
  time2 = Time.parse(time2)
  time_pattern = /^([2][0-3]|[0-1][0-9]):[0-5][0-9]:[0-5][0-9]$/
  if time1.strftime("%H:%M:%S").match(time_pattern) && time2.strftime("%H:%M:%S").match(time_pattern)
    sum = []
    sum[2] = time2.sec + time1.sec
    sum[1] = ((sum[2].div(60)) + time2.min + time1.min)
    sum[0] = ((sum[1].div(60)) + time2.hour + time1.hour)
    day = sum[0].div(24)
    sum[2] = (sum[2].modulo(60))
    sum[1] = (sum[1].modulo(60))
    sum[0] = (sum[0].modulo(24))
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
