puts "Enter the string ('q'/'Q' for quit)"
string = gets.chomp
exit(ret =0) if string.to_s == 'q'
if string.downcase == string.reverse.downcase
	puts "#{string} is Palindrome"
else puts "#{string} is not Palindrome"
end