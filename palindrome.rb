def palindrome(string)
  exit(ret = 0) if string.to_s == 'q'
  if string.downcase == string.reverse.downcase
    "#{string} is Palindrome"
  else 
  	"#{string} is not Palindrome"
  end
end
puts "Enter the string ('q'/'Q' for quit)"
input_string = gets.chomp
puts palindrome(input_string)
