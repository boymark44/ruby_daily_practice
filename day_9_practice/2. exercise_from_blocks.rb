#* Exercise 1: Declare two methods that implements how a block works in Ruby.
puts "\nImplement a block: "

#* Solution: Do it with no parameters involve.
def print_five_times
  # Print "Hello" 5 times using the times method:

end

print_five_times # => HelloHelloHelloHelloHello
puts


#* Solution: Do it atleast with 1 parameter and call it "num":
def money_printer(num)
  # Use the times method n times:

end

money_printer(3) # => MoneyMoneyMoney
money_printer(5) # => MoneyMoneyMoneyMoneyMoney
p money_printer(0) # => ["", nil]



#* Exercise 2: Using a range-statement, step, to_a, and join methods chained with one another to print even values.
puts "\n\nUsing a range, step, to_a, and join: "

#* Solution: Combine all the methods above to generate the answer.
p # => "0246810"


#* Solution: Use .step method to print even elements in a single-line block.
def increments_of_two
  # The step(upper-bound, no. of intervals)

end

increments_of_two # => 0246810
puts


#* Solution: Use the .upto method to print even elements in a single-line block.
def increments_of_two

end

increments_of_two # => 0246810
puts


#* Solution: Using an empty string to print the even elements.
def increments_of_two

end

puts increments_of_two # => 0246810


#* Solution from Boris:
def increments_of_two
  # Use the times method 6 times and multipy them by 2 for every iteration in a single-line block:

end

increments_of_two # => 0246810
