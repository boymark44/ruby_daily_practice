#* Exercise 12: Custom Count.

puts "Custom Count: "

# Define a custom_count method that accepts a string and search characters.
# The method should count how many times the
# search characters appear in the original string. Do not use the
# built-in count method in your solution.

#* Solution: Solve using the built-in count method.
def custom_count1(strings, search_character)
  strings.count(search_character)
end

p custom_count1("Hello World", "l") # => 3
p custom_count1("Hello World", "O") # => 0
p custom_count1("Hello World", "z") # => 0
p custom_count1("Hello World", "lo") # => 5
p custom_count1("Hello World", "ol") # => 5
puts


#* Solution: Solve using the custom approach.
def custom_count2(strings, search_character)

  character_count = 0

  strings.each_char do |character|
    character_count += 1 if search_character.include?(character)
  end

  character_count
end

p custom_count2("Hello World", "l") # => 3
p custom_count2("Hello World", "O") # => 0
p custom_count2("Hello World", "z") # => 0
p custom_count2("Hello World", "lo") # => 5
p custom_count2("Hello World", "ol") # => 5


#* Solution: Solve again.
def custom_count3(strings, search_character)

  character_count = 0

  strings.each_char do |character|
    character_count += 1 if search_character.include?(character)
  end

  character_count
end

p custom_count3("Hello World", "l") # => 3
p custom_count3("Hello World", "O") # => 0
p custom_count3("Hello World", "z") # => 0
p custom_count3("Hello World", "lo") # => 5
p custom_count3("Hello World", "ol") # => 5



#* Exercise 13: Custom Delete.
puts "\n\nCustom Delete: "

# Define a custom_delete method that accepts a string and
# a string of deletion characters. The method should build up
# a new string consisting of only characters that are NOT found
# among the deletion characters. Do not use the built-in
# delete method in your solution.

#* Solution: Solve using the built-in delete method.
def custom_delete1(string, deletion_characters)
  string.delete(deletion_characters)
end

p custom_delete1("cottage cheese", "c") # => "ottage heese"
p custom_delete1("cottage cheese", "e") # => "cottag chs"
p custom_delete1("cottage cheese", "ce") # => "ottag hs"
p custom_delete1("cottage cheese", "ec") # => "ottag hs"


#* Solution: Solve once.
def custom_delete2(string, deletion_characters)

  result_string = ""

  string.each_char do |character|
    result_string << character unless deletion_characters.include?(character)
  end

  result_string
end

p custom_delete2("cottage cheese", "c") # => "ottage heese"
p custom_delete2("cottage cheese", "e") # => "cottag chs"
p custom_delete2("cottage cheese", "ce") # => "ottag hs"
p custom_delete2("cottage cheese", "ec") # => "ottag hs"


#* Solution: Solve it again
def custom_delete3(string, deletion_characters)

  result_string = ""

  string.each_char do |character|
    result_string << character unless deletion_characters.include?(character)
  end

  result_string
end

p custom_delete3("cottage cheese", "c") # => "ottage heese"
p custom_delete3("cottage cheese", "e") # => "cottag chs"
p custom_delete3("cottage cheese", "ce") # => "ottag hs"
p custom_delete3("cottage cheese", "ec") # => "ottag hs"



#* Exercise 14: Custom Index.
puts "\n\nCustom Index: "

# Define a custom_index method that accepts a string and a search term.
# The method should return the first index position of the
# search term within the string. If the search term does not exist,
# return nil. Do not use the built-in index method in your solution.

#* Solution: Solve using the built-in index method.
def custom_index1(string, search_term)
  string.index(search_term)
end

p custom_index1("I am very handsome", "I") # => 0
p custom_index1("I am very handsome", "e") # => 6
p custom_index1("I am very handsome", "Z") # => nil
p custom_index1("I am very handsome", "am") # => 2
p custom_index1("I am very handsome", "ma") # => nil


#* Solution: Solve once using the custom approach.
def custom_index2(string, search_term)

  return nil unless string.include?(search_term)

  search_term_length = search_term.length

  string.chars.each_with_index do |current_char, current_index|
    matched_index = string[current_index, search_term_length]

    return current_index if search_term == matched_index
  end
end

p custom_index2("I am very handsome", "I") # => 0
p custom_index2("I am very handsome", "e") # => 6
p custom_index2("I am very handsome", "Z") # => nil
p custom_index2("I am very handsome", "am") # => 2
p custom_index2("I am very handsome", "ma") # => nil


#* Solution: Solve again.
def custom_index3(string, search_term)

  search_term_length = search_term.length

  string.chars.each_with_index do |current_char, current_index|
    matched_index = string[current_index, search_term_length]

    return current_index if search_term == matched_index
  end

  nil
end

p custom_index3("I am very handsome", "I") # => 0
p custom_index3("I am very handsome", "e") # => 6
p custom_index3("I am very handsome", "Z") # => nil
p custom_index3("I am very handsome", "am") # => 2
p custom_index3("I am very handsome", "ma") # => nil


#* Exercise 15: Custom Join.
puts "\n\nCustom Join: "

# Define a custom_join method that accepts an array of strings
# and a delimiter. The method should merge/join the array elements
# together into a single string. It should insert the delimiter
# in between every two subsequent elements. Do not use the
# built-in join method in your solution.

#* Solution: Solve using the built-in join method.
def custom_join1(strings, delimiter)
  strings.join(delimiter)
end

p custom_join1(["red", "green", "blue"], "!") # => "red!green!blue"
p custom_join1(["Big", "Mac"], "$$") # => "Big$$Mac"
p custom_join1([], "$$$") # => ""


#* Solution: Solve using the custom approach.
def custom_join2(strings, delimiter)

  joined_strings = ""
  final_index = strings.length - 1

  strings.each_with_index do |current_char, current_index|
    joined_strings << current_char
    joined_strings << delimiter unless current_index == final_index
  end

  joined_strings
end

p custom_join2(["red", "green", "blue"], "!") # => "red!green!blue"
p custom_join2(["Big", "Mac"], "$$") # => "Big$$Mac"
p custom_join2([], "$$$") # => ""


#* Solution: Solve again.
def custom_join3(strings, delimiter)

  joined_strings = ""
  final_index = strings.length - 1

  strings.each_with_index do |current_char, current_index|
    joined_strings << current_char
    joined_strings << delimiter unless current_index == final_index
  end

  joined_strings
end

p custom_join3(["red", "green", "blue"], "!") # => "red!green!blue"
p custom_join3(["Big", "Mac"], "$$") # => "Big$$Mac"
p custom_join3([], "$$$") # => ""



#* Exercise 16: Custom Split.
puts "\n\nCustom Split: "

# Define a custom_split method that accepts a piece of text and a delimiter.
# The method should return an array of the segments of the text
# after being split by the delimiter. Your solution should NOT
# use the built-in split method on a string. Assume that the delimiter
# will never be an empty string.

#* Solution: Solve using the built-in split method.
def custom_split1(text, delimiter)
  text.split(delimiter)
end

p custom_split1("Hi, my name is Boris", " ") # => ["Hi,", "my", "name", "is", "Boris"]
p custom_split1("ravioli is delicious", "i") # => ["rav", "ol", " ", "s del", "c", "ous"]
p custom_split1("Zebra", "j") # => ["Zebra"]
p custom_split1(" hello", " ") # => ["hello"]


#* Solution: Solve using the custom approach.
def custom_split2(text, delimiter)

  splitted_strings = []
  segment = ""

  text.each_char do |current_character|
    if current_character == delimiter
      splitted_strings << segment unless segment.empty?
      segment = ""
    else
      segment << current_character
    end
  end

  splitted_strings << segment unless segment.empty?
  splitted_strings
end

p custom_split2("Hi, my name is Boris", " ") # => ["Hi,", "my", "name", "is", "Boris"]
p custom_split2("ravioli is delicious", "i") # => ["rav", "ol", " ", "s del", "c", "ous"]
p custom_split2("Zebra", "j") # => ["Zebra"]
p custom_split2(" hello", " ") # => ["hello"]


#* Solution: Solve again.
def custom_split3(text, delimiter)

  splitted_strings = []
  segment = ""

  text.each_char do |current_character|
    if current_character == delimiter
      splitted_strings << segment unless segment.empty?
      segment = ""
    else
      segment << current_character
    end
  end

  splitted_strings << segment unless segment.empty?
  splitted_strings
end

p custom_split3("Hi, my name is Boris", " ") # => ["Hi,", "my", "name", "is", "Boris"]
p custom_split3("ravioli is delicious", "i") # => ["rav", "ol", " ", "s del", "c", "ous"]
p custom_split3("Zebra", "j") # => ["Zebra"]
p custom_split3(" hello", " ") # => ["hello"]



#* Exercise 17: The Split Method.
puts "\n\nThe Split Method: "

# Define a longest_word method that accepts a string.
# The method should return the longest word in the string.
# If two words are tied for maximum length, the method should
# return the last word in the phrase with that length.
# You can assume:
#  - Every two words are separated by a single space
#  - The string does not contain any symbols or characters

#* Solution: Solve once.
def longest_word1(strings)

  words = strings.split(" ")
  longest_word = words[0]

  words.each do |current_word|
    if current_word.length >= longest_word.length
      longest_word = current_word
    end
  end

  longest_word
end

p longest_word1("Bobby loves very big scary kangaroos too") # => "kangaroos"
p longest_word1("Ruby is my favorite language") # => "language"
p longest_word1("Hello") # => "Hello"


#* Solution: Solve twice.
def longest_word2(strings)

  words = strings.split(" ")
  longest_word = words[0]

  words.each do |current_word|
    if current_word.length >= longest_word.length
      longest_word = current_word
    end
  end

  longest_word
end


p longest_word2("Bobby loves very big scary kangaroos too") # => "kangaroos"
p longest_word2("Ruby is my favorite language") # => "language"
p longest_word2("Hello") # => "Hello"


#* Solution: Solve again.
def longest_word3(strings)

  words = strings.split(" ")
  longest_word = words[0]

  words.each do |current_word|
    if current_word.length >= longest_word.length
      longest_word = current_word
    end
  end

  longest_word
end

p longest_word3("Bobby loves very big scary kangaroos too") # => "kangaroos"
p longest_word3("Ruby is my favorite language") # => "language"
p longest_word3("Hello") # => "Hello"
