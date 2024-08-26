#* Exercise 1: Calling a method from another method.
puts "\nCalling a method from another method: "

#* Solution: Create a custom calculator.
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
puts


# Solution suggested by Cody AI which is to use symbols instead of strings for operation names in the
# custom_calculator method. This can improve performance and reduce the risk of typos:
# Symbols are strings that you prepend a colon ":" instead of enclosing them with quotes.

#* Solution: Use the "case" operation.
def custom_calculator2(a, b, operation)
  case operation
  when "add" then add(a, b)
  when "subtract" then sub(a, b)
  when "multiply" then mul(a, b)
  when "divide"
    b.zero? ? "Cannot be divide by Zero" : div(a, b)
  else
    "Invalid Operation"
  end
end

puts custom_calculator2(3, 5, "add") # => 8
puts custom_calculator2(2, 5, "subtract") # => -13
puts custom_calculator2(3, 5, "multiply") # => 15
puts custom_calculator2(20, 4, "divide") # => 5
puts


#* Solution: Utilize the guard clauses to handle edge cases early or perform validation then add the actual calculation.
def custom_calculator3(a, b, operation)
  return "Invalid Operation" unless ["add", "subtract", "multiply", "divide"].include?(operation)
  return "Cannot be divide by zero" if operation == "divide" and b.zero?

  case operation
  when "add"
    add(a, b)
  when "subtract"
    sub(a, b)
  when "multiply"
    mul(a, b)
  when "divide"
    div(a, b)
  end
end

puts custom_calculator3(3, 5, "add") # => 8
puts custom_calculator3(2, 5, "subtract") # => -13
puts custom_calculator3(3, 5, "multiply") # => 15
puts custom_calculator3(20, 4, "divide") # => 5
puts



#* Exercise 2: Multiple Conditions.
puts "\n\nMultiple Conditions: "

# Define a divisible_by_three_and_four method that
# accepts a number as its argument.
# It should return true if the number is evenly divisible by both 3 and 4.
# It should return false otherwise.

#* Solution:
def divisible_by_three_and_four(num)
  if num % 3 == 0 and num % 4 == 0
    true
  else
    false
  end
end

puts divisible_by_three_and_four(3) # => false
puts divisible_by_three_and_four(4) # => false
puts divisible_by_three_and_four(12) # => true
puts divisible_by_three_and_four(18) # => false
puts divisible_by_three_and_four(24) # => true
puts


# Declare a string_theory function that accepts a string as an argument.
# It should return true if the string has more than 4 characters
# or if the string includes the character "B" (capital).

#* Solution:
def string_theory(string)
  if string.length > 4 or string.include?("B")
    true
  else
    false
  end
end

puts string_theory("Big Mac") # => true
puts string_theory("Bank") # => true
puts string_theory("refrigerator") # => true
puts string_theory("boy") # => false
puts string_theory("car") # => false



#* Exercise 3: If-statements.
puts "\n\nIf-Statements: "

# Define a even_or_odd_operations method that accepts an integer.
# If the integer is even, the method should return the number + 2
# If the integer is odd, the method should return the number - 3

#* Solution:
def even_or_odd_operations(integer)
  if integer.even?
    integer + 2
  else
    integer - 3
  end
end

puts even_or_odd_operations(2) # => 4
puts even_or_odd_operations(0) # => 2
puts even_or_odd_operations(13) # => 10
puts even_or_odd_operations(9) # => 6



#* Exercise 4: If-Elsif-Else Statements.
puts "\n\nIf-Elsif-Else Statements: "

# Declare a numeric_energy function that accepts a number.
# If the number is positive, return the string "Positive"
# If the number is negative, return the string "Negative"
# If the number is zero, return the string "Zero Hero"

#* Solution:
def numeric_energy(number)
  if number.positive?
    "Positive"
  elsif number.negative?
    "Negative"
  else
    "Zero Hero"
  end
end

puts numeric_energy(5) # => Positive
puts numeric_energy(10) # => Positive
puts numeric_energy(-5) # => Negative
puts numeric_energy(-8) # => Negative
puts numeric_energy(0) # => Zero Hero
puts


#* Solution: Solving Numeric Energy using "case method" for better readability.
def numeric_energy(number)
  case
  when number > 0 then "Positive"
  when number < 0 then "Negative"
  else "Zero Hero"
  end
end

puts numeric_energy(5) # => Positive
puts numeric_energy(10) # => Positive
puts numeric_energy(-5) # => Negative
puts numeric_energy(-8) # => Negative
puts numeric_energy(0) # => Zero Hero
