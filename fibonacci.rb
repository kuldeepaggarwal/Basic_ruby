puts "Fibonacci Series upto 1000:"
@last_num = 1
@sec_last = 0
def fib (last_num,sec_last)
	puts @sec_last
	puts @last_num
	loop do
	 	result = yield( (@last_num),  (@sec_last))
		break if result>= 1000
		puts result
		@sec_last = @last_num
		@last_num = result
	end
end

 fib(@last_num , @sec_last) { (@last_num.to_i + @sec_last.to_i)}