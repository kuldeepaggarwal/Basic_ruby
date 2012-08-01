def fib (limit)
  puts @sec_last
  puts @last_num
  loop do
    result = @last_num +  @sec_last
    yield( result )
    @sec_last = @last_num
    @last_num = result
  end
end

puts "Fibonacci Series upto 1000:"
@last_num = 1
@sec_last = 0
fib(limit_upto = 1000) { |num| break if num > limit_upto
  puts num
}

