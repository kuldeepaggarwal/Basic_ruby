class Name 
  attr_writer :firstname, :lastname
  def initialize
  	print "Enter the Firstname: "
    firstname = gets.strip
    print "Enter the Lastname: "
    lastname = gets.strip
    raise SyntaxError, "Firstname cannot be empty" if firstname == ""
    raise SyntaxError, "Firstname is not capitalised" if firstname != firstname.capitalize
    raise SyntaxError, "Lastname cannot be empty" if lastname == ""
    @firstname = firstname
    @lastname = lastname
  end
  def to_s
    "Firstname: #{@firstname} and Lastname: #{@lastname} has been set"
  end
end