require '../lib/function_overloading'

shape = Shapes.new()
puts "Enter your choice:"
puts "1. for area of Circle"
puts "2. for area of Rectangle"
print "3. for area of Triangle: "
choice = gets.chomp
puts
case choice
  when "1"
    print "Enter the radius of Circle: "
    radius = gets.chomp
    puts "Radius of Circle is:#{shape.area(radius)}"
  when "2"
    print "Enter the Length of Rectangle: "
    length = gets.chomp
    print "Enter the Breadth of Rectangle: "
    breadth = gets.chomp
    puts "Radius of Rectangle is:#{shape.area(length, breadth)}"
  when "3"
    print "Enter side a of Triangle: "
    a = gets.chomp
    print "Enter side b of Triangle: "
    b = gets.chomp
    print "Enter side c of Triangle: "
    c = gets.chomp
    puts "Area of Traingle is:#{shape.area(a, b, c)}"
  else
  	puts "You entered wrong choice"
end