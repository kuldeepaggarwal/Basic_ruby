def highlight(original_string, highlighting_string)
  @total_occurence = 0
  temp = original_string.gsub(/(#{highlighting_string})/i) do |match|
    @total_occurence = @total_occurence + 1 
    "#{match.replace("(#{match})")}"
  end
  puts temp
  puts "Total occurences found: #{@total_occurence}"
end
puts "Enter the String"
input_string = gets.chomp
puts "Enter the highlighting string"
highlight_string = gets.chomp
highlight(input_string, highlight_string)