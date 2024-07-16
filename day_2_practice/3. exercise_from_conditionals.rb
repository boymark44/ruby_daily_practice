#* Exercise 1: Calling a method from another method.
puts "\nCalling a method from another method: "
# Create a custom calculator:
def add(a, b)
  a + b
end

def sub(a, b)
  a - b
end

def mul(a, b)
  a * b
end

def div(a, b)
  a / b
end

def custom_calculator(a, b, operation)
  if operation == "add"
    add(a, b)
  elsif operation == "subtract"
    sub(a, b)
  elsif operation == "multiply"
    mul(a, b)
  elsif operation == "divide"
    if b != 0
      div(a, b)
    else
      "Cannot be divide by zero"
    end
  else
    "Invalid Operation"
  end
end

puts custom_calculator(3, 5, "add") # => 8
puts custom_calculator(2, 5, "subtract") # => -13
puts custom_calculator(3, 5, "multiply") # => 15
puts custom_calculator(20, 4, "divide") # => 5
puts "\n\n"


# Solution suggested by Cody AI Use symbols instead of strings for operation names in the
# custom_calculator method. This can improve performance and reduce the risk of typos:
# Symbols are strings that you prepend a colon ":" insted of enclosing them with quotes.
def custom_calculator2(a, b, operation)
  case operation
  when :add then add(a, b)
  when :subtract then sub(a, b)
  when :multiply then mul(a, b)
  when :divide
    # Conditional Statements i.e one-line if-statements
    b.zero? ? "Cannot be divide by zeo" : div(a, b)
  else
    "Invalid Operation"
  end
end

puts custom_calculator(3, 5, "add") # => 8
puts custom_calculator(2, 5, "subtract") # => -13
puts custom_calculator(3, 5, "multiply") # => 15
puts custom_calculator(20, 4, "divide") # => 5
puts "\n\n"


# Utilize the guard clauses to handle edge cases early:
def custom_calculator3(a, b, operation)
  return "Invalid Operation" unless [:add, :subtract, :multiply, :divide].include?(operation)
  return "Cannot be divide by zero" if operation == :divide and b.zero?
end

puts custom_calculator(3, 5, "add") # => 8
puts custom_calculator(2, 5, "subtract") # => -13
puts custom_calculator(3, 5, "multiply") # => 15
puts custom_calculator(20, 4, "divide") # => 5
puts "\n\n"

#* Exercise 2: Mutliple Conditions.
puts "Multiple Conditions: "

# Define a divisible_by_three_and_four method that
# accepts a number as its argument.
# It should return true if the number is evenly divisible by both 3 and 4.
# It should return false otherwise.

# Divisible by three and four:
def divisible_by_three_and_four(num)

end

puts divisible_by_three_and_four(3) # => false
puts divisible_by_three_and_four(4) # => false
puts divisible_by_three_and_four(12) # => true
puts divisible_by_three_and_four(18) # => false
puts divisible_by_three_and_four(24) # => true
puts "\n\n"


# Declare a string_theory method that accepts a string as an argument.
# It should return true if the string has more than 4 characters
# or if the string includes the character "B" (capital).

# String Theory:
def string_theory(string)

end

puts string_theory("Big Mac") # => true
puts string_theory("Bank") # => true
puts string_theory("refrigerator") # => true
puts string_theory("boy") # => false
puts string_theory("car") # => false
puts "\n\n"



#* Exercise 3: If-statements.
puts "If-Statements: "

# Define a even_or_odd_operations method that accepts an integer.
# If the integer is even, the method should return the number + 2
# If the integer is odd, the method should return the number - 3

# Even or Odd Operations:
def even_or_odd_operations(integer)

end

puts even_or_odd_operations(2) # => 4
puts even_or_odd_operations(0) # => 2
puts even_or_odd_operations(13) # => 10
puts even_or_odd_operations(9) # => 6
puts "\n\n"



#* Exercise 4: If-Elsif-Else Statements.
puts "If-Elsif-Else Statements: "

# Declare a numeric_energy method that accepts a number.
# If the number is positive, return the string "Positive"
# If the number is negative, return the string "Negative"
# If the number is zero, return the string "Zero Hero"

# Numeric Energy:
def numeric_energy(number)

end

puts numeric_energy(5) # => Positive
puts numeric_energy(10) # => Positive
puts numeric_energy(-5) # => Negative
puts numeric_energy(-8) # => Negative
puts numeric_energy(0) # => Zero Hero
puts "\n\n"
