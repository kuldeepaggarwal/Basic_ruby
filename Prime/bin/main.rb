require_relative '../lib/prime.rb'
puts "Enter the limit"
input_limit = gets.chomp.to_i
puts "All Prime numbers upto #{input_limit}"
puts primes_upto(input_limit)