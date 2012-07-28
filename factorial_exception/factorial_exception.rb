def factorial(num)
  begin 
    throw :done if num < 0
    fact = 1
     (1..num).each do | value |
      fact *= value
    end
    fact
  rescue
    puts "Number can not be negative"
    exit(ret = 0)
  end
end
