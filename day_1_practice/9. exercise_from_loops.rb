#* Exercise 1: While Loop.
puts "\nWhile Loop: "

# Implement a simple while loop that counts from 1 to 10:
count = 1
while count < 10
  print count

  count += 1
end
puts
puts count # => 10
puts


# Implement a simple while loop that appends the character "a" for every iteration:
letters = "a"
while letters.length < 5
  puts letters

  letters << "a"
end
puts "\n\n"



#* Exercise 2: The Next Keyword.
puts "The Next Keyword: "

# Iterate through each character of the string and return the index position in which the "$" is found
money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."


# Without using the next keyword:
current_index = 0
final_index = money_sentence.length - 1

while current_index < final_index
  if money_sentence[current_index] == "$"
    puts "Dollars if found at index #{current_index}."
  end

  current_index += 1
end
puts


# Using the next keyword:
current_index = 0
final_index = money_sentence.length - 1

while current_index < final_index
  if money_sentence[current_index] != "$"
    current_index += 1
    next
  end

  puts "Dollars if found at index #{current_index}."
  current_index += 1
end
puts "\n\n"



#* Exercise 3: The Break Keyword.
puts "The Break Keyword: "

# Mission: Find the first iteration or existence of "$" from the given string and terminate the loop completely. Failure is not an option.
money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."

current_index = 0
final_index = money_sentence.length - 1
first_money_index = nil

while current_index < final_index
  if money_sentence[current_index] == "$"
    first_money_index = current_index
    break
  end

  current_index += 1
end

puts first_money_index # => 7
puts "\n\n"



#* Exercise 4: Solving a Factorial Problem through Recursion.
puts "Recursion: Factorial. "

# Factorial Function:
def factorial(number)
  # Base Case:
  return 1 if number == 1

  # Recursive Case:
  number * factorial(number - 1)

  #* factorial(5)
  #* 5 * 4!
  #*     4 * 3!
  #*         3 * 2!
  #*             2 * 1!
  #*              return 1 (Base case reached)
end

puts factorial(4) # => 24
puts factorial(5) # => 120
puts factorial(6) # => 720
puts "\n\n"



#* Exercise 5: Solving a Reverse String Problem through Recursion.
puts "Recursion: Reversing a String. "


# Using iteration-based solution:
def reverse_string(string)
  # Set three variables for upperbound, lowerbound, and the one that will contained the reversed_text which is an empty string:
  first_index = 0
  current_index_from_the_rear = string.length - 1
  reversed_text = ""

  while current_index_from_the_rear >= first_index
    reversed_text << string[current_index_from_the_rear]

    current_index_from_the_rear -= 1
  end

  reversed_text
end

puts reverse_string("straw hat") # => tah warts


# Using the each_char method:
def reverse_string(string)
  # Set only the container for reversed_text which is an empty string:
  reversed_text = ""

  string.each_char do |char|
    reversed_text = char + reversed_text
  end

  reversed_text
end

puts reverse_string("straw hat") # => tah warts


# Using the recursive method:
def reverse_string(string)
  # Base Case: return the string if the string length is less than or equal to 1.
  return string if string.length <= 1

  # Recursive Case:
  string[-1] + reverse_string(string[0...-1])

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
end

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
