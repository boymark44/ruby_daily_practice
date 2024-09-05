#* Exercise 12: Custom Count.

puts "Custom Count: "

# Define a custom_count method that accepts a string and search characters.
# The method should count how many times the
# search characters appear in the original string. Do not use the
# built-in count method in your solution.

#* Solution:
def custom_count(strings, search_character)
  count = 0

  strings.each_char do |character|
    count += 1 if search_character.include?(character)
  end

  count
end

p custom_count("Hello World", "l") # => 3
p custom_count("Hello World", "O") # => 0
p custom_count("Hello World", "z") # => 0
p custom_count("Hello World", "lo") # => 5
p custom_count("Hello World", "ol") # => 5



#* Exercise 13: Custom Delete.
puts "\n\nCustom Delete: "

# Define a custom_delete method that accepts a string and
# a string of deletion characters. The method should build up
# a new string consisting of only characters that are NOT found
# among the deletion characters. Do not use the built-in
# delete method in your solution.

#* Solution:
def custom_delete(string, deletion_characters)
  new_string = ""

  string.each_char do |character|
    new_string << character unless deletion_characters.include?(character)
  end

  new_string
end

p custom_delete("cottage cheese", "c") # => "ottage heese"
p custom_delete("cottage cheese", "e") # => "cottag chs"
p custom_delete("cottage cheese", "ce") # => "ottag hs"
p custom_delete("cottage cheese", "ec") # => "ottag hs"



#* Exercise 14: Custom Index.
puts "\n\nCustom Index: "

# Define a custom_index method that accepts a string and a search term.
# The method should return the first index position of the
# search term within the string. If the search term does not exist,
# return nil. Do not use the built-in index method in your solution.

#* Solution:
def custom_index(string, search_term)
  search_term_length = search_term.length

  string.chars.each_with_index do |character, index|
    sequence = string[index, search_term_length]

    return index if sequence == search_term
  end

  nil
end

p custom_index("I am very handsome", "I") # => 0
p custom_index("I am very handsome", "e") # => 6
p custom_index("I am very handsome", "Z") # => nil
p custom_index("I am very handsome", "am") # => 2
p custom_index("I am very handsome", "ma") # => nil



#* Exercise 15: Custom Join.
puts "\n\nCustom Join: "

# Define a custom_join method that accepts an array of strings
# and a delimiter. The method should merge/join the array elements
# together into a single string. It should insert the delimiter
# in between every two subsequent elements. Do not use the
# built-in join method in your solution.

#* Solution:
def custom_join(strings, delimiter)
  joined_strings = ""
  final_index = strings.length - 1

  strings.each_with_index do |string, index|
    joined_strings << string
    joined_strings << delimiter if index != final_index
  end

  joined_strings
end

p custom_join(["red", "green", "blue"], "!") # => "red!green!blue"
p custom_join(["Big", "Mac"], "$$") # => "Big$$Mac"
p custom_join([], "$$$") # => ""



#* Exercise 16: Custom Split.
puts "\n\nCustom Split: "

# Define a custom_split method that accepts a piece of text and a delimiter.
# The method should return an array of the segments of the text
# after being split by the delimiter. Your solution should NOT
# use the built-in split method on a string. Assume that the delimiter
# will never be an empty string.

#* Solution:
def custom_split(text, delimiter)
  result = []
  segment = ""

  text.each_char do |character|
    if character == delimiter
      result << segment unless segment.empty?
      segment = ""
    else
      segment << character
    end
  end

  result << segment unless segment.empty?
  result
end

p custom_split("Hi, my name is Boris", " ") # => ["Hi,", "my", "name", "is", "Boris"]
p custom_split("ravioli is delicious", "i") # => ["rav", "ol", " ", "s del", "c", "ous"]
p custom_split("Zebra", "j") # => ["Zebra"]
p custom_split(" hello", " ") # => ["hello"]



#* Exercise 17: The Split Method.
puts "\n\nThe Split Method: "

# Define a longest_word method that accepts a string.
# The method should return the longest word in the string.
# If two words are tied for maximum length, the method should
# return the last word in the phrase with that length.
# You can assume:
#  - Every two words are separated by a single space
#  - The string does not contain any symbols or characters

#* Solution:
def longest_word(strings)
  words = strings.split(" ")
  longest_word = words[0]

  words.each do |word|
    if word.length >= longest_word.length
      longest_word = word
    end
  end

  longest_word
end

p longest_word("Bobby loves very big scary kangaroos too") # => "kangaroos"
p longest_word("Ruby is my favorite language") # => "language"
p longest_word("Hello") # => "Hello"
