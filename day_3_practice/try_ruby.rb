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



#* Summary #5
puts "\n\nSummary #5"

# Side-note: The use of parenthesis after invoking a method. It all matters in
# preference but the usual convention is that if you provide an argument to method,
# it must be enclose in the parenthesis for readability except for the puts, p and print.

puts "Hello"
puts("Hello") # => Both are valid

# Creating our own methods.
# Two reasons for creating our own method:
# 1. To make our program shorter.
# 2. To make our code easier to read.


# Defining our own methods:
# def tame(number_of_shrews)
# end


# puts
# def tame(number_of_shrews)
#   number_of_shrews.times { puts "Tamed a shrew" }
# end

# puts tame(5)


puts
def tame(number_of_shrews)
  number_of_shrews.times { puts "Tamed a shrew" }

  # Implicit returning, no need for the "return" keyword
  number_of_shrews # => But we can also remove this line and still getting the same results
end

puts tame(5)



#* Summary #6
puts "\n\nSummary #6"

$get_shakey = {
  "William Shakespeare" => {
    "1"  => { "title" => "The Two Gentlemen of Verona", "finished" => 1591 },
    "2"  => { "title" => "The Taming of the Shrew", "finished" => 1591 },
    "3"  => { "title" => "Henry VI, Part 2", "finished" => 1591 },
    "4"  => { "title" => "Henry VI, Part 3", "finished" => 1591 },
    "5"  => { "title" => "Henry VI, Part 1", "finished" => 1592 },
    "6"  => { "title" => "Titus Andronicus", "finished" => 1592 },
    "7"  => { "title" => "Richard III", "finished" => 1593 },
    "8"  => { "title" => "Edward III", "finished" => 1593 },
    "9"  => { "title" => "The Comedy of Errors", "finished" => 1594 },
    "10" => { "title" => "Love's Labour's Lost", "finished" => 1595 },
    "11" => { "title" => "Love's Labour's Won", "finished" => 1596 },
    "12" => { "title" => "Richard II", "finished" => 1595 },
    "13" => { "title" => "Romeo and Juliet", "finished" => 1595 },
    "14" => { "title" => "A Midsummer Night's Dream", "finished" => 1595 },
    "15" => { "title" => "King John", "finished" => 1596 },
    "16" => { "title" => "The Merchant of Venice", "finished" => 1597 },
    "17" => { "title" => "Henry IV, Part 1", "finished" => 1597 },
    "18" => { "title" => "The Merry Wives of Windsor", "finished" => 1597 },
    "19" => { "title" => "Henry IV, Part 2", "finished" => 1598 },
    "20" => { "title" => "Much Ado About Nothing", "finished" => 1599 },
    "21" => { "title" => "Henry V", "finished" => 1599 },
    "22" => { "title" => "Julius Caesar", "finished" => 1599 },
    "23" => { "title" => "As You Like It", "finished" => 1600 },
    "24" => { "title" => "Hamlet", "finished" => 1601 },
    "25" => { "title" => "Twelfth Night", "finished" => 1601 },
    "26" => { "title" => "Troilus and Cressida", "finished" => 1602 },
    "27" => { "title" => "Sir Thomas More", "finished" => 1604 },
    "28" => { "title" => "Measure for Measure", "finished" => 1604 },
    "29" => { "title" => "Othello", "finished" => 1604 },
    "30" => { "title" => "All's Well That Ends Well", "finished" => 1605 },
    "31" => { "title" => "King Lear", "finished" => 1606 },
    "32" => { "title" => "Timon of Athens", "finished" => 1606 },
    "33" => { "title" => "Macbeth", "finished" => 1606 },
    "34" => { "title" => "Antony and Cleopatra", "finished" => 1606 },
    "35" => { "title" => "Pericles, Prince of Tyre", "finished" => 1608 },
    "36" => { "title" => "Coriolanus", "finished" => 1608 },
    "37" => { "title" => "The Winter's Tale", "finished" => 1611 },
    "38" => { "title" => "Cymbeline", "finished" => 1610 },
    "39" => { "title" => "The Tempest", "finished" => 1611 },
    "40" => { "title" => "Cardenio", "finished" => 1613 },
    "41" => { "title" => "Henry VIII", "finished" => 1613 },
    "42" => { "title" => "The Two Noble Kinsmen", "finished" => 1614 }
  }
}

puts $get_shakey # => Prints the hash


puts
s = $get_shakey

s["William Shakespeare"].each do |key, val|
  puts val["title"] # => Returns all the title play of William Shakespeare
end


# Print all the plays of Shakespeare in a certain year:
puts
def count_plays(year)
  s = $get_shakey

  s["William Shakespeare"].select { |k, v| v["finished"] == year }
  .each { |k, v| puts v["title"] }
  .count
end

puts count_plays(1591)


# Introducing String Literals:
puts
def print_plays(year_from, year_to)
  s = $get_shakey

  s["William Shakespeare"].select { |k, v| year_from <= v["finished"] and year_to >= v["finished"]}
  .each { |k, v| puts "#{v["title"].ljust(30)} #{v["finished"]}" }
end

print_plays(1600, 1605)


# Logical Expressions:
puts
if 1 < 2
  puts "It is true: 1 is less than 2"
end

puts "It is true: 1 is less than 2" if 1 < 2 # => The same as above but shorter

puts
puts 5 <= 10
puts 'abc' == 'def'
puts true
puts 123456
puts 0
puts nil
puts 'xyz'.empty?
#puts 'a' > 5 # => Comparing a String to a Number (ArgumentError)


a = 0

if a == 100
  puts "Expression is true, but a is now: #{a}"
else
  puts "#{a} is not equal to 100"
end


puts
def hungry?(time_of_day_in_hours)
  if time_of_day_in_hours < 12
    puts "\nMe not hungry"
  else
    puts "\nMe hungry"
    true
  end
end

def eat_an(food)
  puts "Me eats #{food}"
end

eat_an("Apple") if hungry?(14)
eat_an("Banana") if hungry?(0)
eat_an("Steak") if hungry?(13)
eat_an("Sushi") if hungry?(11)



#* Summary #7
puts "\n\nSummary #7"


# Create an empty Hash:
new1 = Hash.new
p new1 # => Using a Class. It is also use to make objects of a certain class.

new2 = {}
p new2 # => Using an empty curly braces


# Creating a new Class:
puts
# class Blurb
# end

# puts
# class Blurb
#   attr_accessor :content, :time, :mood # => "attr_accessor" = are variables attached to a Class. Sort like limbs to a Body.
# end

# p Blurb


# Create an instance of that Class:
# puts
# blurb1 = Blurb.new
# puts blurb1

# Outside the Class, we use accessors:
# blurb1.content = "Today Mt. Hood was stolen"
# blurb1.time = Time.now
# blurb1.mood = :sick


# Now we want to set the time automatically and limit the characters to 40 everytime a new Blurb is created:
puts
# class Blurb
#   # We can do that using the initialize method:
#   attr_accessor :content, :time, :mood

#   def initialize(mood, content="") # => Let's set the content as strings
#     # We use object variables denoted by "@" symbol
#     # Inside the Class, we use object variables.
#     @time = Time.now
#     @content = content[0..39]
#     @mood = mood
#   end
# end

# puts Blurb.new(:sick).time


# # Let us create a new instance of Blurb with 2 arguments:
# blurb2 = Blurb.new :confused, "I can not believe Mt. Hood was stolen!"
# p blurb2



#* Summary #8
puts "\n\nSummary #8"


# Finishing the App
# class Blurbalizer
#   def initialize(title)
#     @title = title
#     @blurbs = [] # => A fresh clean array for storing Blurbs
#   end

#   def add_a_blurb(mood, content)
#     @blurbs << Blurb.new(mood, content)
#   end

#   def show_timeline
#     puts "Blurbify: #{@title} has #{@blurbs.count} Blurbs"

#     @blurbs.sort_by { |t| t.time }
#     .reverse.each { |t| puts "#{t.content.ljust(40)} #{t.time}" }
#   end

# end

# myapp = Blurbalizer.new "The Big Blurb"
# p myapp

# myapp.add_a_blurb(:moody, "Add A Blurb Here")
# myapp.add_a_blurb(:sick, "I Left my Hoodie on the Mountain!")
# myapp.add_a_blurb(:happy, "It was stolen by a giraffe !!")
# myapp.add_a_blurb(:energetic, "I am speechless!")
# myapp.add_a_blurb(:gloomy, "I can not believe Mt. Hood was stolen!")
# myapp.add_a_blurb(:grief, "Today Mount Hood Was Stolen!")
# myapp.show_timeline


# Updated Blurb Class
class Blurb
  attr_accessor :content, :time, :mood

  def initialize(mood, content="")
    @time = Time.now
    @content = content[0..39]
    @mood = mood
  end

  def moodify
    case @mood
    when :sad
      "😢"  # Sad emoji
    when :happy
      "😊"  # Happy emoji
    when :angry
      "😠"  # Angry emoji
    when :excited
      "😄"  # Excited emoji
    when :surprised
      "😲"  # Surprised emoji
    when :confused
      "😕"  # Confused emoji
    when :sleepy
      "😴"  # Sleepy emoji
    else
      "😐"  # Neutral emoji
    end
  end
end

class Blurbalizer
  def initialize(title)
    @title = title
    @blurbs = []
  end

  def add_a_blurb(mood, content)
    @blurbs << Blurb.new(mood, content)
  end

  def show_timeline
    puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs"

    @blurbs.sort_by { |t| t.time }.reverse.each { |t| puts "#{t.content.ljust(40)} #{t.time}" }
  end
end

myapp = Blurbalizer.new("The Big Blurb")
myapp.add_a_blurb(:sad, "Add A Blurb Here")
myapp.add_a_blurb(:angry, "I Left my Hoodie on the Mountain!")
myapp.add_a_blurb(:happy, "It was stolen by a giraffe !!")
myapp.add_a_blurb(:excited, "I am speechless!")
myapp.add_a_blurb(:surprise, "I can not believe Mt. Hood was stolen!")
myapp.add_a_blurb(:confuse, "Today Mount Hood Was Stolen!")
myapp.show_timeline
