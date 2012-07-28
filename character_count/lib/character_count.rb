module CharacterCount
  def self.count(input)
    digits = ('0'..'9').to_a.to_s
    lowercase = ('a'..'z').to_a.to_s
    uppercase = ('A'..'Z').to_a.to_s
    digit_count = 0
    lower_count = 0
    upper_count = 0
    special_count = 0
    input.each_char do |char|
    	if (digits.include?char)
    		digit_count += 1
    	elsif lowercase.include?char
    		lower_count += 1
    	elsif uppercase.to_s.include?char
    		upper_count += 1
    	else 
    		special_count += 1
    	end
    end
    puts "No of Digits : #{digit_count}"
    puts "No of Lowercase characters: #{lower_count}"
    puts "No of Uppercase characters: #{upper_count}"
    puts "No of Special characters : #{special_count}"
  end	
end