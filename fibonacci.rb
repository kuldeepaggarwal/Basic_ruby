def fib (limit)
	puts @sec_last
	puts @last_num
	loop do
	 	result = yield( @last_num +  @sec_last )
		break if result > limit
		puts result
		@sec_last = @last_num
		@last_num = result
	end
end

puts "Fibonacci Series upto 1000:"
@last_num = 1
@sec_last = 0
fib(1000) { |num| num}

