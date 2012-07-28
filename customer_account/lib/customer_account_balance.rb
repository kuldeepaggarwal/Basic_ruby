class Customer
  @@account_no = 0
  def initialize(name, balance = 1000)
    @name = name.capitalize
    @balance = balance
	@@account_no = @@account_no + 1
	@account_no = @@account_no
  end
  def to_s
    "Welcome #{@name}! Your account number is: #{@account_no} and balance : #{@balance}"
  end
  def deposit(amount)
    @balance += amount
    puts "Deposited : #{amount}"
    puts "Your current balance :#{@balance}"
  end
  def withdrawal(amount)
    @balance -= amount
    puts "Withdrawal : #{amount}"
    puts "Your current balance :#{@balance}"
   end
end

if __FILE__ == $0 
customer1 = Customer.new("kd")
customer2 = Customer.new("akshay")
customer3 = Customer.new("aayush")
puts customer3
customer3.deposit(1000)
end