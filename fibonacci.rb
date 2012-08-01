def fib (limit)
  puts @sec_last = 0
  puts @last_num = 1
  loop do
    puts result = yield
    @sec_last = @last_num
    @last_num = result
  end
end

puts "Fibonacci Series upto 1000:"
fib(limit_upto = 1000) do 
  break if @last_num + @sec_last > limit_upto
  @last_num + @sec_last
end

