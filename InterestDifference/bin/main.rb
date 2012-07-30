require "../lib/interest_difference.rb"

print "Enter the Principal: "
principal = gets.chomp.to_i
#print "Enter the Rate of interest in % p.a.: "
#rate = gets.chomp.to_i
print "Enter the time: "
time = gets.chomp.to_i
object = InterestDifference.new(principal, time)
object.difference()