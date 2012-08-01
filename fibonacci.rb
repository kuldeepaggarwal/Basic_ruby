def fib (limit)
  loop do
    result = yield @last_num + @sec_last
    puts result
    @sec_last = @last_num
    @last_num = result
  end
end

puts "Fibonacci Series upto 1000:"
puts @sec_last = 0
puts @last_num = 1
fib(limit_upto = 1000) do |sum|
  break if  sum > limit_upto
  sum
end

