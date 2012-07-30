require "../lib/raise.rb"
begin
  print "Enter the Firstname: "
  firstname = gets.chomp
  raise SyntaxError, "Firstname cannot be empty" if firstname == ""
  raise SyntaxError, "Firstname is not capitalised" if firstname != firstname.capitalize
  print "Enter the Lastname: "
  lastname = gets.chomp
  raise SyntaxError, "Lastname cannot be empty" if lastname == ""
  name = Name.new
  name.firstname = firstname
  name.lastname = lastname
  puts name
end