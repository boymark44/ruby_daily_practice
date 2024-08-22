#* Summary #1
puts "Summary #1"

3.times do
  puts "Hello"
end


puts 2 + 6
puts 4 * 10
puts 5 - 12
puts 30 / 4


puts "Mark Glenn"


#* Summary #2
puts "\n\nSummary #2"
puts "Mark Glenn".reverse
puts "Mark Glenn".length
puts "Mark Glenn " * 5

#40.reverse # => Of course error, (NoMethodError)

# Try to convert them first into string then do the reverse
puts 40.to_s.reverse

# to_s for strings
# to_i for integers
# to_a for arrays

p []

p ticket = [12, 47, 35, 48, 50] # => Saving to a variable
p ticket = [12, 47, 35, 48, 50].max
p ticket = [12, 47, 35, 48, 50].sort! # => A bang method was invoke, permanently altering the array

# Array Indexing
p ticket[0]
p ticket[1]
p ticket[2]



#* Summary #3
puts "\n\nSummary #3"

poem = "
My toast has flown from my hand
And my toast has gone to the moon.
But when I saw it on television,
Planting our flag on Halley's comet,
More still did I want to eat it.
"

puts poem

# Short for "global substitute"
puts poem.gsub("toast", "honeydew") # => replaces "toast" with "honeydew" instead

puts poem.reverse # => Reversing the whole poem but not the way we expected, they turned backwards instead

# In order to reverse them by line, chain the methods lines then reverse
puts
p poem.lines.reverse # => Converts the string into array first then reverse
puts poem.lines.reverse # => Converts the string into array first then reverse

# Chaining Methods
puts
p poem.lines.reverse.join
puts poem.lines.reverse.join

# Other string methods
puts poem.downcase
puts poem.upcase
puts poem.swapcase



#* Summary #4
puts "\n\nSummary #4"

# Let's start with Hashes
books = {}

# Ratings:

# :splendid → a masterpiece
# :quite_good → enjoyed, sure, yes
# :mediocre → equal parts great and terrible
# :quite_not_good → notably bad
# :abysmal → steaming wreck


# Rating a book:
books["Game of Thrones"] = :splendid # => Use a symbol ":" instead of strings("") for memory efficiency because the computer only store it once

puts books

books["Harry Potter"] = :quite_good
books["Percy Jackson"] = :mediocre

puts books
puts books.length

# Indexing or Referencing in Hashes through its keys
puts books["Percy Jackson"] # => Returns the value: mediocre

puts
puts books.keys   # => Printing all keys
puts
puts books.values # => Printing all values


# Counting up the reviews
puts
ratings = Hash.new {0}

books.values.each { |rate|
  ratings[rate] += 1 # => increase the value by 1
}

puts ratings


# Blocks = a bunch of ruby code enclose in curly braces
# Single-line block = {}
# Multi-line block = do end
puts
5.times { print "0delay! " } # => A single-line block


# Block Variables = are variables that are enclose with two pipes ||
puts
5.times do |time|
  puts time # => method .times sends a value to variable |time| and block variables are only known within the block
end
