#* Exercise 1: The Map and Collect Methods. (map, collect)

puts "\nThe Map and Collect Methods: "

# Store the string length of every bird from the birds array:
birds = %w[eagle sparrow pigeon hawk penguin]


# Using the regular convention(use the each method to iterate):
bird_cage = []

birds.each { |bird| bird_cage << bird.length }
p bird_cage # => [5, 7, 6, 4, 7]
puts


# Using the map method:
bird_cage = birds.map { |bird| bird.length }
p bird_cage # => [5, 7, 6, 4, 7]
puts


# Using the collect method:
bird_cage = birds.collect { |bird| bird.length }
p bird_cage # => [5, 7, 6, 4, 7]
puts "\n\n"



#* Exercise 2: The Select and Reject Methods. (select, reject)

puts "The Select and Reject: "

words = %w[racecar selfless sentences level]


# Using the select method - select those words that are palindrome:
palindromes = words.select { |word| word == word.reverse }
p palindromes # => ["racecar", "level"]
puts


# Using the reject method - reject those words that are not palindrome:
not_palindrome = words.reject { |word| word == word.reverse }
p not_palindrome # => ["selfless", "sentences"]
puts


# Using the select and reject methods at the same time:
animals = %w[cheetah cat lion elephant dog cow]
p animals.reject { |animal| animal.include?("c") } # => ["lion", "elephant", "dog"]
puts "\n\n"



#* Exercise 3: The Partition Method. (partition)

puts "The Partition Method: "

foods = %w[Steak Vegetables Steak-Burger Kale Tofu Tuna-Steaks]

#* good_foods = (foods that include the word "Steak")
#* bad_foods = (foods that does not include the word "Steak")


# Using both the select and reject methods to accomplish the goal of partitioning:
good_foods = foods.select { |food| food.include?("Steak") }
bad_foods = foods.reject { |food| food.include?("Steak") }
p good_foods # => ["Steak", "Steak-Burger", "Tuna-Steaks"]
p bad_foods # => ["Vegetables", "Kale", "Tofu"]
puts


# Using the partition method to automatically partition the good_foods from the bad_foods:
good_foods, bad_foods = foods.partition { |food| food.include?("Steak") }
p good_foods # => ["Steak", "Steak-Burger", "Tuna-Steaks"]
p bad_foods # => ["Vegetables", "Kale", "Tofu"]
puts "\n\n"



#* Exercise 4: The Find and Detect Methods in Ruby. (find, detect)

puts "The Find and Detect Methods in Ruby: "

# find and detect - checks any array element that satisfy a condition first over others and keep track of it.

# Using the find and detect methods to return the only element that satisfies contains the character "e":
words = %w[dictionary refrigerator platypus microwave]


# Using find:
p words.find { |word| word.include?("e") } # => "refrigerator"

# Using detect:
p words.detect { |word| word.include?("e") } # => "refrigerator"
puts "\n\n"



#* Exercises 5: Unlimited Method Arguments.

puts "The Unlimited Method Arguments: "

# Define a method called `adder` that accepts any number of arguments.
# The method prints the arguments to the console and calculates the sum of the arguments.
# The sum is returned by the method.
#
# *Arguments*
# - `*numbers`: Any number of arguments.
#
# *Examples*
# ```
# p adder(1, 2, 3, 4, 5) #=> [1, 2, 3, 4, 5]\n15
# ```

def adder(*numbers)
  p numbers

  # Set a rolling_sum variable:
  rolling_sum = 0

  # Iterate through numbers using the each method and for every number, add it to the rolling_sum:
  numbers.each { |number| rolling_sum += number }

  # Return the rolling_sum:
  rolling_sum
end

p adder(1) # => [1], 1
p adder(1, 2) # => [1, 2], 3
p adder(1, 2, 3) # => [1, 2, 3], 6
p adder(1, 2, 3, 4) # => [1, 2, 3, 4], 10
p adder(1, 2, 3, 4, 5) # => [1, 2, 3, 4, 5], 15
p adder # => 0, []
puts


def adder(a, b, *numbers, c, d)
  p numbers

  # Set a rolling_sum variable:
  rolling_sum = 0

  # Iterate through numbers using the each method and for every number, add it to the rolling_sum:
  numbers.each { |number| rolling_sum += number }

  # Return the rolling_sum:
  rolling_sum
end

p adder(1, 2, 3, 4) # => [], 0
p adder(1, 2, 3, 4, 5) # => [3], 3
p adder(1, 2, 3, 4, 5, 6) # => [3, 4], 7
puts


#* Exercises 6: Defining a custom max method.

puts "Custom Max Method: "

# Define a custom_max method that accepts an array.
# The method should return the largest value in the array.
# If the array is empty, the method should return nil.
# Do not use the max method in your solution!


# Using the built-in max method:
def using_builtin_array(array)
  #Hint: Use the ternary operation and implicit returning:
  return nil ? array.empty? : array.max
end

p using_builtin_array([434.12, 723.99, 84.12, 649.92]) # => 723.99
p using_builtin_array([8, 10, 2, 1, 19, 4]) # => 19
p using_builtin_array(["Tree", "Elm", "Zebra"]) # => "Zebra"
p using_builtin_array([]) # => nil
puts


# Using a Custom Max approach:
def custom_max(array)
  # Base Case:
  return nil if array.empty?

  # Set the largest_element to the first index:
  largest_element = array[0]

  # Iterate using the each method:
  array.each do |current_element|
    # Set the largest_element into the current_element if the current_element is greater than the largest_element:
    largest_element = current_element if current_element > largest_element
  end

  largest_element
end

p custom_max([434.12, 723.99, 84.12, 649.92]) # => 723.99
p custom_max([8, 10, 2, 1, 19, 4]) # => 19
p custom_max(["Tree", "Elm", "Zebra"]) # => "Zebra"
p custom_max([]) # => nil
puts "\n\n"



#* Exercise 7: The Each Method.

puts "The Each Method: "

# Define a double_elements method that accepts an array of numbers.
# The method should return a new array where each element is
# double its value from the original array.

# Double Elements:
def double_elements(numbers_array)
  # Define a new_numbers_array that is empty:
  new_numbers_array = []

  # Iterate through the numbers_array using the each method:
  numbers_array.each do |element|
    multiple_of_two = element * 2
    new_numbers_array << multiple_of_two
  end

  # Return the new_array with its elements multiplied by two:
  new_numbers_array
end

p double_elements([1, 2, 3, 4, 5]) # => [2, 4, 6, 8, 10]
p double_elements([10, 20, 30]) # => [20, 40, 60]
puts


# Define an extract_long_words method that accepts an array of strings.
# The method should return a new array of only the strings that
# have more than 7 characters.

# Extract long words:
def extract_long_words(string_array)
  # Define a long_words array that is empty:
  long_words = []

  # Iterate using the each method:
  string_array.each do |string|
    long_words.push(string) if string.length > 7
  end

  long_words
end

p extract_long_words(["spaghetti", "penne", "fettuccine", "ziti"]) # => ["spaghetti", "fettuccine"]
p extract_long_words(["lasagna", "ravioli", "cannelloni", "tagliatelle"]) # => ["cannelloni", "tagliatelle"]
puts


# Define a pastas_and_sauces method that accepts two arrays.
# The first array will hold pasta types and the second will hold sauces.
# The method should return an array consisting of all the combinations
# of pastas and sauce. Combine each pasta and sauce in a new string
# (see example below). Make sure to capitalize each pasta and sauce

# Pastas and Sauces:
def pastas_and_sauces(pasta, sauce)
  # Define an empty array of pasta_and_sauce:
  pasta_and_sauce = []

  # Iterate through each pastas and sauces:
  pasta.each do |pasta_type|
    sauce.each do |sauce_type|
      # Nest the pasta and sauce:
      pasta_and_sauce.push("#{pasta_type.capitalize} with #{sauce_type.capitalize} sauce.")
    end
  end

  # Return the Pairings of Pastas and Sauces:
  pasta_and_sauce
end

p pastas_and_sauces(["fettucine", "spaghetti", "penne"], ["alfredo", "bolognese", "pesto"]) # => ["Fettucine with Alfredo sauce.", "Fettucine with Bolognese sauce.", "Fettucine with Pesto sauce.", "Spaghetti with Alfredo sauce.", "Spaghetti with Bolognese sauce.", "Spaghetti with Pesto sauce.", "Penne with Alfredo sauce.", "Penne with Bolognese sauce.", "Penne with Pesto sauce."]
puts "\n\n"



#* Exercises 8: The Each with Index.

puts "The Each with Index: "

# Define a product_of_number_and_index method that accepts an array of numbers.
# The method should iterate over the elements. For each element,
# it should multiply the element by its index position. It should
# then add that product to a rolling sum. Return the final sum.
# If the array has no elements, the final sum should be 0.

# Product of number and index:
def product_of_number_and_index(numbers_array)
  # Define an empty new_numbers_array:
  new_numbers_array = []

  # Iterate through the numbers array using the each_with_index:
  numbers_array.each_with_index do |element, index|
    new_numbers_array.push(element * index)
  end

  # Define a rolling_sum variable that contains the sum of the new_numbers_array:
  rolling_sum = 0

  # Iterate through the new_numbers_array using the each method, add them with one another, and return their overall sum:
  new_numbers_array.each { |num| rolling_sum += num }

  # Return the Rolling Sum:
  rolling_sum
end

p product_of_number_and_index([1, 2, 3]) # => 8
p product_of_number_and_index([]) # => 0
puts


# Solve using the each_with_index method: (Mutliply the element with its index)
def product_of_number_and_index(numbers_array)
  #* Implement the same operation using the each_with_index method only:

  # Define a rolling_sum that is set to 0:
  rolling_sum = 0

  # Iterate through each element and index using the each_with_index method, multiply the element with their index, and add all their results into the rolling_sum:
  numbers_array.each_with_index { |element, index| rolling_sum += (element * index) }

  # Return the total rolling sum:
  rolling_sum
end

p product_of_number_and_index([1, 2, 3]) # => 8
p product_of_number_and_index([]) # => 0
puts "\n\n"



#* Exercises 9: Filtering Methods.

puts "Filtering Methods: "

# Define a reverse_all method that accepts an array of strings.
# The method should return an array with all the strings in reversed order.

# Reverse all:
def reverse_all(string_array)
  # Use the map method:
  reverse_string_array = string_array.map { |string| string.reverse }

  reverse_string_array
end

p reverse_all(["cat", "bat", "tub"]) # => ["tac", "tab", "but"]
p reverse_all(["forest"]) # => ["tserof"]
p reverse_all([]) # => []
puts


# Define a words_with_letter method that accepts an array of strings and a letter.
# The method should return an array of the strings that include the letter.

# Words with letter:
def words_with_letter(string_array, letter)
  # Use the select method to select those strings that contains the included letter:
  strings_with_letters = string_array.select { |string| string.include?(letter) }

  strings_with_letters
end

p words_with_letter(["cat", "bat", "tub"], "a") # => ["cat", "bat"]
p words_with_letter(["cat", "bat", "tub"], "u") # => ["tub"]
p words_with_letter(["cat", "bat", "tub"], "z") # => []
puts


# Define an evens_and_odds method that accepts an array of numbers.
# The method should segment the array into two arrays.
# The first array should contain the even numbers.
# The second array should contain the odd numbers.
# Return an array consisting of the two arrays.

# Evens and odds:
def evens_and_odds(numbers_array)
  # Use the partition method:
  evens, odds = numbers_array.partition { |num| num.even? }
end

p evens_and_odds([1, 2, 3, 4, 5]) # => [[2, 4], [1, 3, 5]]
p evens_and_odds([2, 4, 6, 8]) # => [[2, 4, 6, 8], []]
p evens_and_odds([]) # => [[], []]
puts "\n\n"



#* Exercises 10: Unlimited Method Arguments.

puts "Unlimited Method Arguments For Strings: "

# Define a sum_of_string_lengths method that accepts
# any number of strings. The method return the sum
# of the lengths of the strings.

# Sum of string lengths:
def sum_of_string_lengths(*strings)
  # Define a rolling_sum variable:
  rolling_sum = 0

  # Iterate using through every strings in the array using each method:
  strings.each { |string| rolling_sum += string.length }

  # Return the rolling_sum:
  rolling_sum
end

p sum_of_string_lengths("bob", "loves", "burgers") # => 15
p sum_of_string_lengths("coding", "is", "so", "fun") # => 13
p sum_of_string_lengths() # => 0
puts "\n\n"



#* Exercise 11: Any? and All? Predicate Methods.

puts "Any? and All?: "

# Define a has_greater_than_seven_characters method that
# accepts an array of strings. It should return a Boolean reflecting
# whether any array element has more than 7 characters.

# Has greater than seven characters:
def has_greater_than_seven_characters(array)
  # Use the any? method:
  array.any? { |string| string.length > 7 }
end

p has_greater_than_seven_characters(["ruby", "exercise", "cat"]) # => true
p has_greater_than_seven_characters(["forest"]) # => false
p has_greater_than_seven_characters([]) # => false
puts


# Define an against_all_odds method that accepts an array of numbers.
# It should return a Boolean reflecting whether all array elements
# are even.

# Against all odds:
def against_all_odds(array)
  # Use the all? method:
  array.all? { |num| num.even? }
end

p against_all_odds([3, 5, 7, 2]) # => false
p against_all_odds([2, 4, 6]) # => true
