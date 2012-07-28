require_relative '../lib/hash'

a = ['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ']
a.inject {|a,b| puts b
}