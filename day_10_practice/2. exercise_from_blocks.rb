#* Exercise 1: Declare two methods that implements how a block works in Ruby.
puts "\nImplement a block: "

#* Solution: Print "Hello" 5 times.
def print_five_times

end

print_five_times # => HelloHelloHelloHelloHello
puts


#* Solution: Use the "num" as the number of times "Money" should be printed:
def money_printer(num)

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


#* Solution from Boris: Use the times method 6-times.
def increments_of_two


end

increments_of_two # => 0246810
