#* Exercise 1: While Loop.
puts "\nWhile Loop: "

# Implement a simple while loop that counts from 1 to 10:



# Implement a simple while loop that appends the character "a" for every iteration:




puts "\n\n"



#* Exercise 2: The Next Keyword.
puts "The Next Keyword: "

# Iterate through each character of the string and return the index position in which the "$" is found
money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."


# *Without using the next keyword:

# Define the current_index:
current_index = 0

# Define the final_index:
final_index = money_sentence.length - 1

# Loop while the current_index is less than the final_index:
# If the current_character at the current_index is equal to "$" then print the index where it is found:
# Increment the current_index.




puts


# *Using the next keyword:

# Define the current_index:
current_index = 0

# Define the final_index:
final_index = money_sentence.length - 1

# Loop while the current_index < final_index:
# If the current_character at the current_index is not equal to "$", then increment the current_index and then next
# Outside of the if-block, print the index where the "$" is found and increment the current_index:



puts "\n\n"



#* Exercise 3: The Break Keyword.
puts "The Break Keyword: "

# Mission: Find the first iteration or existence of "$" from the given string and terminate the loop completely. Failure is not an option.
money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."

# Set the current_index to 0:
current_index = 0

# Set the final_index to the length of the string - 1:
final_index = money_sentence.length - 1

# Set the value of first_money_index to nil:
first_money_index = nil

# While the current_index is less than the final_index, if the character at the current_index is equal to "$",
# the, set the value of the first_money_index to the current_index and then break.
# Outside the if-block, increment the current_index by 1.



puts first_money_index # => 7
puts "\n\n"



#* Exercise 4: Solving a Factorial Problem through Recursion.
puts "Recursion: Factorial. "

# Define a factorial function with a parameter of number.
# Set a base case of "return 1 if number is equal to 1".
# For the recursive case, multiply the number from the called function(number - 1)



#* factorial(5)
#* 5 * 4!
#*     4 * 3!
#*         3 * 2!
#*             2 * 1!
#*              return 1 (Base case reached)

puts factorial(4) # => 24
puts factorial(5) # => 120
puts factorial(6) # => 720
puts "\n\n"



#* Exercise 5: Solving a Reverse String Problem through Recursion.
puts "Recursion: Reversing a String. "


# *Using an iteration-based solution:

# Define a reverse_string method with string as the parameter.
# Set the value of the first_index to 0.
# Set the value of the last_index to the length of the string - 1.
# Set the value of the reversed_text to an empty string and would serve as our container for the reversed text.
# Implement a while loop the checks whether the last_index is greater than or equal to the first_index.
# If true, then append the current character to the reversed_text container using the shovel operator and then decrement the last_index - 1.
# After the loop is done, return the value of the reversed_text.


puts reverse_string("straw hat") # => tah warts


# *Using the each_char method:

# Define a reverse_string method that takes a string as an argument.
# Set the value of the reversed_text to an empty string that would serve as our container for reversed text.
# Iterate through the string using each_char in a multi-line block with |char| as the block variable.
# Set the value of the reversed_text to char + reversed_text
# Once the iteration for every character is done, return the value of reversed_text.



puts reverse_string("straw hat") # => tah warts


# *Using the recursive method:
def reverse_string(string)
  # Base Case: return the string if the string length is less than or equal to 1.
  return string if string.length <= 1

  # Recursive Case:
  string[-1] + reverse_string(string[0...-1])
end

#* Explanation:
#* In this code, the reverse_string function takes a string as input and returns the reversed string.
#* It does this by concatenating the last character of the string with the result of a recursive call
#* to reverse_string on the rest of the string. The base case for the recursion is when the string
#* has a length of 1 or less, in which case the string is returned as is.

#* reverse_string("straw hat")
#*  "t" + reverse_string("straw ha")
#*      "a" + reverse_string("straw h")
#*          "h" + reverse_string("straw ")
#*              " " + reverse_string("straw")
#*                  "w" + reverse_string("stra")
#*                      "a" + reverse_string("str")
#*                          "r" + reverse_string("st")
#*                              "t" + reverse_string("s")
#*                                  return "s" (base case reached)


puts reverse_string("straw hat") # => tah warts
puts "\n\n"



#* Exercise 6: FizzBuzz Problem.
puts "FizzBuzz Problem: "

#* FizzBuzz tests logical thinking in coding. It’s simple yet tricky.
#* Create a fizzbuzz method taking a number. It should print numbers from 1 to the input.
#* But, if a number is divisible by 3, print “Fizz”. If it’s divisible by 5, print “Buzz”.
#* For numbers divisible by both 3 and 5, print “FizzBuzz”. Otherwise, just print the number.

def fizzbuzz(num)
  i = 1

  # Use a while loop to iterate:
  while i <= num
    if i % 3 == 0 and i % 5 == 0
      puts "FizzBuzz"
    elsif i % 3 == 0
      puts "Fizz"
    elsif i % 5 == 0
      puts "Buzz"
    else
      puts i
    end

    i += 1
  end
end

puts fizzbuzz(30)
