#* Exercise 1: String Index Position.
puts "\nString Index Position: "

# Define a same_first_and_last_letter method that accepts a string.
# The method should return true if the first and last character are equal,
# and false otherwise.
# Assume the string will always have 1 or more characters.

#* Solution:
def same_first_and_last_letter(string)
  # Use bracket syntax to compare the first and last index of the string:
  string[0] == string[-1]
end

puts same_first_and_last_letter("runner") # => true
puts same_first_and_last_letter("Runner") # => false
puts same_first_and_last_letter("clock") # => false
puts same_first_and_last_letter("q") # => true
puts


# Define a three_number_sum method that accepts a 3-character string.
# The method should calculate the sum of the digits of the string.
# HINT: You’ll have to figure out a way to convert the
# string-ified digits to integers.

#* Solution:
def three_number_sum(numbers)
  # Access the index: 0, 1, and 2 then convert them into integers:
  numbers[0].to_i + numbers[1].to_i + numbers[2].to_i
end

puts three_number_sum("123") # => 6
puts three_number_sum("567") # => 18
puts three_number_sum("444") # => 12
puts three_number_sum("000") # => 0



#* Exercise 2: String Slicing.
puts "\n\nString Slicing: "

# Define a first_three_characters method that accepts a string.
# The method should return the first 3 characters of the string.

#* Solution: Using bracket syntax.
def first_three_characters(string)
  string[0] + string[1] + string[2]
end

puts first_three_characters("dynasty") # => dyn
puts first_three_characters("empire") # => emp
puts


#* Solution: Using the each_char method.
def first_three_characters2(string)
  result = ""

  string.each_char do |character|
    result << character unless result.length == 3
  end

  result
end

puts first_three_characters2("dynasty") # => dyn
puts first_three_characters2("empire") # => emp
puts


# Define a five_from_the_end method that accepts a string.
# The method should return the last 5 characters of the string.

#* Solution: Using a bracket syntax.
def five_from_the_end(string)
  string[-5, 5]
end

puts five_from_the_end("dynasty") # => nasty
puts five_from_the_end("rhinoceros") # => ceros
puts


# Using the slice method:
def five_from_the_end(string)
  string.slice(-5, 5)
end

puts five_from_the_end("dynasty") # => nasty
puts five_from_the_end("rhinoceros") # => ceros



#* Exercise 3: String Length and Comparison.
puts "\n\nString Length and Comparison: "

# Define a long_word method that accepts a string.
# The method should return a Boolean that reflects whether
# the string has more than 7 characters.

#* Solution: Kind of a lengthy approach.
def long_word(string)
  length = string.length

  string.length > 7 ? true : false
end

puts long_word("Ruby") # => false
puts long_word("Magnificent") # => true
puts


#* Solution: The not so lengthy:
def long_word1(string)
  string.length > 7
end

puts long_word1("Ruby") # => false
puts long_word1("Magnificent") # => true
puts


# Define a first_longer_than_second method that accepts two string arguments.
# The method should return true if the first string is longer than the second
# and false otherwise (including if they are equal in length).

#* Solution:
def first_longer_than_second(string1, string2)
  string1.length > string2.length
end

puts first_longer_than_second("Python", "Ruby") # => true
puts first_longer_than_second("cat", "mouse") # => false
puts first_longer_than_second("Steven", "Seagal") # => false
puts
