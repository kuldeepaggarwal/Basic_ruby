require 'mathn'
/#def prime?(input_number)
	@status = true
  (2..Math.sqrt(input_number).to_i).step() do |num|
    if input_number.modulo(num) == 0
      @status = false
  	  break
    end
  end
  @status
end
#/
def primes_upto(limit)
  @prime = []
  (2..limit).step() {|num| @prime << num if num.prime?}
  @prime
end