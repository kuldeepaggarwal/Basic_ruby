def fact(n)
  if n == 0
    1
  else
    n * fact(n - 1)
  end
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
