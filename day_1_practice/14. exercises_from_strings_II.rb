#* Exercise 12: Custom Count.

puts "Custom Count: "

# Define a custom_count method that accepts a string and a string
# of search characters. The method should count how many times the
# search characters appear in the original string. Do not use the
# built-in count method in your solution.

# Custom count:
def custom_count(strings, search_character)
  # Set the count variable to 0:
  count = 0

  # Iterate through the strings using the each_char method and increment if the search_char is found on the string while iterating:
  strings.each_char { |char| count += 1 if search_character.include?(char) }

  # Return the no. of count a particular substring or character occurs in the string:
  count
end

p custom_count("Hello World", "l") # => 3
p custom_count("Hello World", "O") # => 0
p custom_count("Hello World", "z") # => 0
p custom_count("Hello World", "lo") # => 5
p custom_count("Hello World", "ol") # => 5
puts "\n\n"



#* Exercise 13: Custom Delete.

puts "Custom Delete: "

# Define a custom_delete method that accepts a string and
# a string of deletion characters. The method should build up
# a new string consisting of only characters that are NOT found
# among the deletion characters. Do not use the built-in
# delete method in your solution.

# Custom delete:
def custom_delete(string, deletion_characters)
  # Initialize a new string to store the result:
  new_string = ""

  # Iterate over each character in the original string:
  string.each_char do |char|
    # If the current character is not included in `deletion_characters`, append it to `new_string`:
    new_string << char unless deletion_characters.include?(char)
  end

  # Return the new string:
  new_string
end

p custom_delete("cottage cheese", "c") # => "ottage heese"
p custom_delete("cottage cheese", "e") # => "cottag chs"
p custom_delete("cottage cheese", "ce") # => "ottag hs"
p custom_delete("cottage cheese", "ec") # => "ottag hs"
puts "\n\n"



#* Exercise 14: Custom Index.
puts "Custom Index: "

# Define a custom_index method that accepts a string and a search term.
# The method should return the first index position of the
# search term within the string. If the search term does not exist,
# return nil. Do not use the built-in index method in your solution.

# Custom index:
def custom_index(string, search_term)
  # Define a variable called search_term_length which contains the length of the parameter search_term:
  search_term_length = search_term.length

  # Iterate through each character using the chars method in order to return an array of characters.
  # Chain on top of it the each_with_index method in a multi-line block and provide 2 block variables: character, index.
  string.chars.each_with_index do |character, index|
    sequence = string[index, search_term_length]

    return index if sequence == search_term
  end

  # Return nil if the search term does not exist:
  nil
end

p custom_index("I am very handsome", "I") # => 0
p custom_index("I am very handsome", "e") # => 6
p custom_index("I am very handsome", "Z") # => nil
p custom_index("I am very handsome", "am") # => 2
p custom_index("I am very handsome", "ma") # => nil
puts "\n\n"



#* Exercise 15: Custom Join.
puts "Custom Join: "

# Define a custom_join method that accepts an array of strings
# and a delimiter. The method should merge/join the array elements
# together into a single string. It should insert the delimiter
# in between every two subsequent elements. Do not use the
# built-in join method in your solution.

# Custom join:
def custom_join(strings, delimiter)
  # Define a results variable that would serve as the container and set it into an empty string:
  results = ""

  # Define a final_index varible that would serve as a reference to the final_index of the string:
  final_index = strings.length - 1

  # Iterate through the strings using each_with_index method:
  strings.each_with_index do |string, index|
    results << string # Append the string unto the results.
    results << delimiter if index != final_index # Append the delimiter unto the results if the current index is not equal to the final index.
  end

  # Return the joined strings:
  results
end

p custom_join(["red", "green", "blue"], "!") # => "red!green!blue"
p custom_join(["Big", "Mac"], "$$") # => "Big$$Mac"
p custom_join([], "$$$") # => ""
puts



#* Exercise 16: Custom Split.
puts "Custom Split: "

# Define a custom_split method that accepts a piece of text and a delimiter.
# The method should return an array of the segments of the text
# after being split by the delimiter. Your solution should NOT
# use the built-in split method on a string. Assume that the delimiter
# will never be an empty string.

# Custom split:
def custom_split(text, delimiter)
  # Define a results variable that would serve as the container for the segmented strings and set it into an empty array:
  results = []

  # Define a segment variable that would serve as the temporary container for segmented strings and set it into an empty string:
  segment = ""

  # Iterate through the whole string using the each_char method:
  # Append the segment unto the results unless the segment is empty, otherwise append the character unto segment.
  text.each_char do |character|
    if character == delimiter
      results << segment unless segment.empty?
      segment = ""
    else
      segment << character
    end
  end

  # Append the segment unto the results unless the segment is empty, otherwise append the character unto segment.
  results << segment unless segment.empty?

  # Return the segmented strings:
  results
end

p custom_split("Hi, my name is Boris", " ") # => ["Hi,", "my", "name", "is", "Boris"]
p custom_split("ravioli is delicious", "i") # => ["rav", "ol", " ", "s del", "c", "ous"]
p custom_split("Zebra", "j") # => ["Zebra"]
p custom_split(" hello", " ") # => ["hello"]
puts "\n\n"


#* Exercise 17: The Split Method.
puts "The Split Method: "

# Define a longest_word method that accepts a string.
# The method should return the longest word in the string.
# If two words are tied for maximum length, the method should
# return the last word in the phrase with that length.
# You can assume:
#  - Every two words are separated by a single space
#  - The string does not contain any symbols or characters

# Longest word:
def longest_word(strings)
  words = strings.split(" ")
  longest_word_in_phrase = words[0]

  words.each do |word|
    if word.length >= longest_word_in_phrase.length
      longest_word_in_phrase = word
    end
  end

  longest_word_in_phrase
end

p longest_word("Bobby loves very big scary kangaroos too") # => "kangaroos"
p longest_word("Ruby is my favorite language") # => "language"
p longest_word("Hello") # => "Hello"
