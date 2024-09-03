#* Exercise 1: While Loop.
puts "\nWhile Loop: "

# Implement a simple while loop that counts from 1 to 10:
count = 1

while count <= 10
  puts count

  count += 1
end
puts
puts 10
puts


# Implement a simple while loop that appends the character "a" for every iteration:
result = ""
while result.length < 5
  puts result

  result << "a"
end



#* Exercise 2: The Next Keyword.
puts "\n\nThe Next Keyword: "

# Iterate through each character of the string and return the index position in which the "$" is found
money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."


#* Solution: Without using the next keyword.
current_index = 0
final_index = money_sentence.length - 1

while current_index < final_index
  if money_sentence[current_index] == "$"
    puts "Dollars is found at #{current_index}!"
  end

  current_index += 1
end

puts


#* Solution: Using the next keyword.
# Iterate through each character of the string and return the index position in which the "$" is found
money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."

current_index = 0
final_index = money_sentence.length - 1

while current_index < final_index
  if money_sentence[current_index] != "$"
    current_index += 1
    next
  else
    puts "Dollars is found at #{current_index}!"
    current_index += 1
  end

end



#* Exercise 3: The Break Keyword.
puts "\n\nThe Break Keyword: "

#* Mission: Find the first iteration or existence of "$" from the given string and terminate the loop completely. Failure is not an option.
money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."

#* Solution:
current_index = 0
final_index = money_sentence.length - 1
first_money_index = nil

while current_index <= final_index
  if money_sentence[current_index] == "$"
    first_money_index = current_index
    break
  end

  current_index += 1
end

puts first_money_index # => 7



#* Exercise 4: Solving a Factorial Problem through Recursion.
puts "\n\nRecursion: Factorial. "

# Define a factorial function with a parameter of number.
# Set a base case of "return 1 if number is equal to 1".
# For the recursive case, multiply the number from the called function(number - 1)

#* factorial(5)
#* 5 * 4!
#*     4 * 3!
#*         3 * 2!
#*             2 * 1!
#*              return 1 (Base case reached)

# Solution:
def factorial(num)
  # Set the base case:
  return num if num == 1

  # Recursive case:
  num * factorial(num - 1)
end

puts factorial(4) # => 24
puts factorial(5) # => 120
puts factorial(6) # => 720



#* Exercise 5: Solving a Reverse String Problem through Recursion.
puts "\n\nRecursion: Reversing a String. "

# *Using an iteration-based solution:
# Define a reverse_string method with string as the parameter.
# Set the value of the first_index to 0.
# Set the value of the current_index_from_rear to the length of the string - 1.
# Set the value of the reversed_text to an empty string and would serve as our container for the reversed text.
# Implement a while loop the checks whether the current_index_from_rear is greater than or equal to the first_index.
# If true, then append the current character to the reversed_text container using the shovel operator and then decrement the last_index - 1.
# After the loop is done, return the value of the reversed_text.

# Solution:
def reverse_string(string)
  reversed_text = ""

  first_index = 0
  current_num_from_the_rear = string.length - 1

  while current_num_from_the_rear >= first_index
    reversed_text << string[current_num_from_the_rear]
    current_num_from_the_rear -= 1
  end

  reversed_text
end

puts reverse_string("straw hat") # => tah warts
puts


# *Using the each_char method:
# Define a reverse_string method that takes a string as an argument.
# Set the value of the reversed_text to an empty string that would serve as our container for reversed text.
# Iterate through the string using each_char in a multi-line block with |char| as the block variable.
# Set the value of the reversed_text to char + reversed_text
# Once the iteration for every character is done, return the value of reversed_text.

# Solution:
def reverse_string(string)
  reversed_text = ""

  string.each_char do |character|
    reversed_text = character + reversed_text
  end

  reversed_text
end

puts reverse_string("straw hat") # => tah warts
puts


# *Using the recursive method:
# Make sure to watch out for the base case since we are doing recursion.
# Base Case: return string if string.length <= 1
# Recursive Case: string[-1] + reverse_string(string[0...-1])

# Solution:
def reverse_string(string)
  # Base Case:
  return string if string.length == 1

  # Recursive Case:
  string[-1] + reverse_string(string[0...-1])
end

# Explanation:
# In this code, the reverse_string function takes a string as input and returns the reversed string.
# It does this by concatenating the last character of the string with the result of a recursive call
# to reverse_string on the rest of the string. The base case for the recursion is when the string
# has a length of 1 or less, in which case the string is returned as is.

# Underlying Process:
# reverse_string("straw hat")
#  "t" + reverse_string("straw ha")
#      "a" + reverse_string("straw h")
#          "h" + reverse_string("straw ")
#              " " + reverse_string("straw")
#                  "w" + reverse_string("stra")
#                      "a" + reverse_string("str")
#                          "r" + reverse_string("st")
#                              "t" + reverse_string("s")
#                                  return "s" (base case reached)

puts reverse_string("straw hat") # => tah warts



#* Exercise 6: FizzBuzz Problem.
puts "\n\nFizzBuzz Problem: "

# FizzBuzz tests logical thinking in coding. It’s simple yet tricky.
# Create a fizzbuzz method taking a number. It should print numbers from 1 to the input.
# But, if a number is divisible by 3, print “Fizz”. If it’s divisible by 5, print “Buzz”.
# For numbers divisible by both 3 and 5, print “FizzBuzz”. Otherwise, just print the number.

def fizzbuzz(num)
  count = 1

  while count < num
    if count % 3 == 0 and count % 5 == 0
      puts "FizzBuzz"
    elsif count % 3 == 0
      puts "Fizz"
    elsif count % 5 == 5
      puts "Buzz"
    else
      puts count
    end

    count += 1
  end
end

puts fizzbuzz(30)
