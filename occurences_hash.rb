def occurence(string)
  string.gsub!(/[^A-z]/,"")
  hash_container = Hash.new(0)
  string.each_char do |chr| 
    hash_container[chr] += 1
  end
  puts hash_container
end
puts "Enter the string"
input_string = gets.chomp.downcase
occurence(input_string)
