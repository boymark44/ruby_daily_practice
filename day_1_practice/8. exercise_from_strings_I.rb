#* Exercise 1: String Index Position.
#* Methods: Bracket Syntax

puts "String Index Position: "

# Define a same_first_and_last_letter method that accepts a string.
# The method should return true if the first and last character are equal,
# and false otherwise.
# Assume the string will always have 1 or more characters.

# Same first and last letter:
def same_first_and_last_letter(string)
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

# Three number sum:
def three_number_sum(numbers)
  numbers[0].to_i + numbers[1].to_i + numbers[2].to_i
end

puts three_number_sum("123") # => 6
puts three_number_sum("567") # => 18
puts three_number_sum("444") # => 12
puts three_number_sum("000") # => 0
puts "\n\n"



#* Exercise 2: String Slicing.
#* Methods: Bracket Syntax

puts "String Slicing: "

# Define a first_three_characters method that accepts a string.
# The method should return the first 3 characters of the string.

# First three characters:
def first_three_characters(string)
  # result = ""
  # count = 0

  # string.each_char do |char|
  #   result << char
  #   # if count == 2
  #   #   break
  #   # else
  #   #   count += 1
  #   # end

  #   if count != 2
  #     count += 1
  #   else
  #     break
  #   end
  # end

  # result

  # Solve using the bracket syntax:
  string[0, 3]
end

puts first_three_characters("dynasty") # => dyn
puts first_three_characters("empire") # => emp
puts


# Define a five_from_the_end method that accepts a string.
# The method should return the last 5 characters of the string.

# Five from the end:
def five_from_the_end(string)
  string[-5, 5]
end

puts five_from_the_end("dynasty") # => nasty
puts five_from_the_end("rhinoceros") # => ceros
puts "\n\n"



#* Exercise 3: String Length and Comparison.
#* Methods: length, size

puts "String Length and Comparison: "

# Define a long_word method that accepts a string.
# The method should return a Boolean that reflects whether
# the string has more than 7 characters.

# Long word:
def long_word(string)
  length = string.length

  if length > 7
    true
  else
    false
  end
end

puts long_word("Ruby") # => false
puts long_word("Magnificent") # => true
puts


# Define a first_longer_than_second method that accepts two string arguments.
# The method should return true if the first string is longer than the second
# and false otherwise (including if they are equal in length).

# First longer than second:
def first_longer_than_second(string1, string2)
  string1_length = string1.length
  string2_length = string2.length

  string1_length > string2_length
end

puts first_longer_than_second("Python", "Ruby") # => true
puts first_longer_than_second("cat", "mouse") # => false
puts first_longer_than_second("Steven", "Seagal") # => false
puts
