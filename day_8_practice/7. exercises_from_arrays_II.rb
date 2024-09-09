#* Exercise 1: The Map and Collect Methods. (map, collect)

puts "\nThe Map and Collect Methods: "

# Instruction: Store the string length of every bird from the birds array.
birds = %w[eagle sparrow pigeon hawk penguin]


#* Solution: Using the regular convention(use the .each method to iterate):
bird_cage = []

birds.each { |bird| bird_cage << bird.length }
p bird_cage # => [5, 7, 6, 4, 7]


puts


#* Using the map method:
bird_cage = birds.map { |bird| bird.length }
p bird_cage # => [5, 7, 6, 4, 7]

puts


#* Using the collect method:
bird_cage = birds.collect { |bird| bird.length }
p bird_cage # => [5, 7, 6, 4, 7]


#* Exercise 2: The Select and Reject Methods. (select, reject)
puts "\n\nThe Select and Reject: "

words = %w[racecar selfless sentences level]


#* Solution: Using the select method - select those words that are palindrome.
palindromes = words.select { |word| word == word.reverse }
p palindromes # => ["racecar", "level"]

puts


#* Solution: Using the reject method - reject those words that are not palindrome.
not_palindromes = words.reject { |word| word == word.reverse }
p not_palindromes # => ["selfless", "sentences"]

puts


#* Instruction: Reject those animals whose name have letters "c" on them.
#* Solution: Use the reject and include? method. Use it on the p method directly.
animals = %w[cheetah cat lion elephant dog cow]

zoo = animals.reject { |animal| animal.include?("c") }
p zoo # => ["lion", "elephant", "dog"]



#* Exercise 3: The Partition Method. (partition)
puts "\n\nThe Partition Method: "

foods = %w[Steak Vegetables Steak-Burger Kale Tofu Tuna-Steaks]

# good_foods = (foods that include the word "Steak")
# bad_foods = (foods that does not include the word "Steak")


#* Solution: Using both the select and reject methods to accomplish the goal of partitioning:
good_foods = foods.select { |food| food.include?("Steak") }
bad_foods = foods.reject { |food| food.include?("Steak") }
p good_foods # => ["Steak", "Steak-Burger", "Tuna-Steaks"]
p bad_foods # => ["Vegetables", "Kale", "Tofu"]


puts


#* Solution: Using the partition method to automatically partition the good_foods from the bad_foods:
partitioned_foods = foods.partition { |food| food.include?("Steak") }
p partitioned_foods # => [["Steak", "Steak-Burger", "Tuna-Steaks"], ["Vegetables", "Kale", "Tofu"]]



#* Exercise 4: The Find and Detect Methods in Ruby. (find, detect)
puts "\n\nThe Find and Detect Methods in Ruby: "

# find and detect - checks any array element that satisfy a condition first over others and keep track of it.

#* Solution: Using the find and detect methods to return the only element that contains the character "e":
words = %w[dictionary refrigerator platypus microwave]


# Using find:
p words.find { |word| word.include?("e") } # => "refrigerator"

# Using detect:
p words.detect { |word| word.include?("e") } # => "refrigerator"


#* Exercises 5: Unlimited Method Arguments.
puts "\n\nThe Unlimited Method Arguments: "

# Define a method called `adder` that accepts integers.
# The method prints the integers to the console and calculates the its sum.
# The sum is return by the method.
# *Arguments*
# - `*numbers`: Any number of arguments.
#
# *Examples*
# ```
# p adder(1, 2, 3, 4, 5) #=> [1, 2, 3, 4, 5]\n15
# ```

def adder(*numbers)

  rolling_sum = 0

  numbers.each { |number| rolling_sum += number }

  p numbers
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

  rolling_sum = 0

  numbers.each { |number| rolling_sum += number }

  p numbers
  rolling_sum
end

p adder(1, 2, 3, 4) # => [], 0
p adder(1, 2, 3, 4, 5) # => [3], 3
p adder(1, 2, 3, 4, 5, 6) # => [3, 4], 7



#* Exercises 6: Defining a custom max method.
puts "\n\nCustom Max Method: "

# Define a custom_max method that accepts an array.
# The method should return the largest value in the array.
# If the array is empty, the method should return nil.
# Do not use the max method in your solution!

#* Solution: Use the max method in a ternary statement.
def using_builtin_array(array)
  array.empty? ? nil : array.max
end

p using_builtin_array([434.12, 723.99, 84.12, 649.92]) # => 723.99
p using_builtin_array([8, 10, 2, 1, 19, 4]) # => 19
p using_builtin_array(["Tree", "Elm", "Zebra"]) # => "Zebra"
p using_builtin_array([]) # => nil
puts


#* Solution: Using a Custom Max approach:
def custom_max(array)

  largest_element = array[0]

  array.each do |current_element|
    largest_element = current_element if current_element > largest_element
  end

  largest_element
end

p custom_max([434.12, 723.99, 84.12, 649.92]) # => 723.99
p custom_max([8, 10, 2, 1, 19, 4]) # => 19
p custom_max(["Tree", "Elm", "Zebra"]) # => "Zebra"
p custom_max([]) # => nil



#* Exercise 7: The Each Method.

puts "\n\nThe Each Method: "

# Define a double_elements method that accepts an array of numbers.
# The method should return a new array where each element is
# double its value from the original array.

#* Solution:
def double_elements(numbers_array)
  even_elements = []

  numbers_array.each do |number|
    even_elements << number * 2
  end

  even_elements
end

p double_elements([1, 2, 3, 4, 5]) # => [2, 4, 6, 8, 10]
p double_elements([10, 20, 30]) # => [20, 40, 60]
puts


# Define an extract_long_words method that accepts an array of strings.
# The method should return a new array of only the strings that
# have more than 7 characters.

#* Solution:
def extract_long_words(string_array)

  result = []

  string_array.each do |string|
    result << string if string.length > 7
  end

  result
end

p extract_long_words(["spaghetti", "penne", "fettuccine", "ziti"]) # => ["spaghetti", "fettuccine"]
p extract_long_words(["lasagna", "ravioli", "cannelloni", "tagliatelle"]) # => ["cannelloni", "tagliatelle"]
puts


# Define a pastas_and_sauces method that accepts two arrays.
# The first array will hold pasta types and the second will hold sauces.
# The method should return an array consisting of all the combinations
# of pastas and sauce. Combine each pasta and sauce in a new string
# (see example below). Make sure to capitalize each pasta and sauce

#* Solution:
def pastas_and_sauces(pasta, sauce)

  combinations = []

  pasta.each do |pasta_type|
    sauce.each do |sauce_type|
      combinations.push("#{pasta_type.capitalize} with #{sauce_type.capitalize} sauce.")
    end
  end

  combinations
end

p pastas_and_sauces(["fettucine", "spaghetti", "penne"], ["alfredo", "bolognese", "pesto"]) # => ["Fettucine with Alfredo sauce.", "Fettucine with Bolognese sauce.", "Fettucine with Pesto sauce.", "Spaghetti with Alfredo sauce.", "Spaghetti with Bolognese sauce.", "Spaghetti with Pesto sauce.", "Penne with Alfredo sauce.", "Penne with Bolognese sauce.", "Penne with Pesto sauce."]



#* Exercises 8: The Each with Index.
puts "\n\nThe Each with Index: "

# Define a product_of_number_and_index method that accepts an array of numbers.
# The method should iterate over the elements. For each element,
# it should multiply the element by its index position. It should
# then add that product to a rolling sum. Return the final sum.
# If the array has no elements, the final sum should be 0.

#* Solution: Define a variable that would hold the elements multiplied 2.
def product_of_number_and_index(numbers_array)

  new_array = []

  numbers_array.each_with_index { |number, index| new_array << number * index  }

  rolling_sum = 0

  new_array.each { |number| rolling_sum += number }

  rolling_sum
end

p product_of_number_and_index([1, 2, 3]) # => 8
p product_of_number_and_index([]) # => 0
puts


#* Solution: Using the each_with_index method only.
def product_of_number_and_index(numbers_array)

  rolling_sum = 0

  numbers_array.each_with_index do |number, index|
    rolling_sum += number * index
  end

  rolling_sum
end

p product_of_number_and_index([1, 2, 3]) # => 8
p product_of_number_and_index([]) # => 0



#* Exercises 9: Filtering Methods.
puts "\n\nFiltering Methods: "

# Define a reverse_all method that accepts an array of strings.
# The method should return an array with all the strings in reversed order.

#* Solution: Use the map or collect methods.
def reverse_all(string_array)
  reversed_strings_array = string_array.map { |string| string.reverse }

  reversed_strings_array
end

p reverse_all(["cat", "bat", "tub"]) # => ["tac", "tab", "but"]
p reverse_all(["forest"]) # => ["tserof"]
p reverse_all([]) # => []
puts


# Define a words_with_letter method that accepts an array of strings and a letter.
# The method should return an array of the strings that include the letter.

#* Solution: Use select method.
def words_with_letter(string_array, letter)

  word_with_the_letter = string_array.select { |string| string.include?(letter) }

  word_with_the_letter
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

#* Solution: Use the partition method.
def evens_and_odds(numbers_array)
  partitioned_numbers = numbers_array.partition { |number| number.even? }

  partitioned_numbers
end

p evens_and_odds([1, 2, 3, 4, 5]) # => [[2, 4], [1, 3, 5]]
p evens_and_odds([2, 4, 6, 8]) # => [[2, 4, 6, 8], []]
p evens_and_odds([]) # => [[], []]



#* Exercises 10: Unlimited Method Arguments.
puts "\n\nUnlimited Method Arguments For Strings: "

# Define a sum_of_string_lengths method that accepts
# any number of strings. The method return the sum
# of the lengths of the strings.

#* Solution:
def sum_of_string_lengths(*strings)

  rolling_sum = 0

  strings.each do |string|
    rolling_sum += string.length
  end

  rolling_sum
end

p sum_of_string_lengths("bob", "loves", "burgers") # => 15
p sum_of_string_lengths("coding", "is", "so", "fun") # => 13
p sum_of_string_lengths() # => 0



#* Exercise 11: Any? and All? Predicate Methods.
puts "\n\nAny? and All?: "

# Define a has_greater_than_seven_characters method that
# accepts an array of strings. It should return a Boolean reflecting
# whether any array element has more than 7 characters.

#* Solution: Use the any? method.
def has_greater_than_seven_characters(array)

  more_than_seven = array.any? { |string| string.length > 7 }

  more_than_seven
end

p has_greater_than_seven_characters(["ruby", "exercise", "cat"]) # => true
p has_greater_than_seven_characters(["forest"]) # => false
p has_greater_than_seven_characters([]) # => false
puts


# Define an against_all_odds method that accepts an array of numbers.
# It should return a Boolean reflecting whether all array elements
# are even.

#* Solution: Use the all? method.
def against_all_odds(array)

  all_are_even = array.all? { |number| number.even? }

  all_are_even
end

p against_all_odds([3, 5, 7, 2]) # => false
p against_all_odds([2, 4, 6]) # => true
