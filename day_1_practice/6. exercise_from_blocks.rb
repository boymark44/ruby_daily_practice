#* Declare two methods that implements how a block works in Ruby.
puts "\n Implement a block: "

# Without a parameter:
def print_five_times
  # Use the times method 5 times:
  5.times { puts "Hello World" }
end

print_five_times # => HelloHelloHelloHelloHello
puts


# Defining atleast 1 parameter named "num":
def money_printer(num)
  # Use the times method n times:
  num.times { print "Money" }
  puts
end

money_printer(3) # => MoneyMoneyMoney
money_printer(5) # => MoneyMoneyMoneyMoneyMoney
p money_printer(0) # => ["", nil]
puts "\n\n"



#* Using a range statement, step, to_a, and join methods chained with one another to print even values.
puts "Using a range, step, to_a, and join: "

p (0..10).step(2).to_a.join # => "0246810"


# Using step method in blocks to print the even elements:
def increments_of_two
  0.step(10, 2) { |num| print "#{num}" }
end

increments_of_two # => 0246810
puts


# Using the upto method in blocks to print the even elements:
def increments_of_two
  0.upto(10) { |num| print num if num.even? }
end

increments_of_two # => 0246810
puts


# Using an empty string to print the even elements:
def increments_of_two
  even_num = ""

  # Use either upto or step method to iterate:
  # Do not forget to convert into string every num so that it would be compatible for
  # them to store into the empty string.
  0.upto(10) do |num|
    even_num << num.to_s if num % 2 == 0
  end

  even_num
end

puts increments_of_two # => 0246810


# Solution from Boris:
def increments_of_two
  # Use the times method 6 times and multipy them by 2 for every iteration in a single-line block:
  6.times { |index| print index * 2}
end

increments_of_two # => 0246810
