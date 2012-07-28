def fact(n)
  fact = 1
  (1..n).each do | value |
    fact *= value
  end
  fact
end
puts "Enter the number for pascal triangle"
input = gets.chomp.to_i
def pascal(num)
	(num + 1).times do |index|
		yield index
	end
end
pascal(input) do |n|
  a = String.new 
  (n + 1).times do |index|
  	a += "#{fact(n)/(fact(n - index) * fact(index))} "
  end 
  puts a
end
