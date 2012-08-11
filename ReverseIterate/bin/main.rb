require_relative "../lib/reverse_iterate.rb"


[1,1,1,1,1,2,3,6,8,4,54,9,4,5].reverse_iterate { |i| puts "#{i}"}