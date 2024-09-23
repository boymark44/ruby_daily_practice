#* Integers in Underscores.

p # => 999_999_000
p # => 1_000_000
p # => 1_000_000_000
p # => 1_000_000_000_000



#* String Concatenate with Shovel Operator "<<" and "+".

puts # => (Number String - Shovel Operator Concatenation "<<")
puts # => (Regular String - Shovel Operator Concatenation "<<")
puts # => (Number String - Addition Operator Concatenation "+" )
puts # => (Regular String - Addition Operator Concatenation "+" )



#* The p, print and puts method.
p # =>  (More detailed printing)
puts # => (Default \n or newline after printing)
print # => (Single-line printing)



#* Types of Variables in Ruby: Local, Instance, Class, Global, and Constants

  #* Local:
  def my_method
    local_var = "I'm local"
    puts local_var
  end # local_var is not accessible outside of my_method.


  #* Instance:
  class Person
    def initialize(name)
      @name = name
    end

    def show_name
      puts @name
    end
  end

  person = Person.new("Mark Glenn")
  person.show_name


  #* Class Variables:
  class Animal
    @@species_count = 0

    def initialize
      @@species_count += 1
    end

    def self.species_count
      @@species_count
    end

  end

  cat = Animal.new
  dog = Animal.new

  puts Animal.species_count # => 2


  #* Global Variables:
  $global_var = "I'm global!"


  def display_global
    puts $global_var
  end

  display_global # => "I'm global!"


  #* Constants:
  class MathConstants
    PI = 3.14159
  end

  puts MathConstants::PI

#* Summary of Variable Types:
  # Local variables: Method/block scope (lowercase letters or _).
  # Instance variables: Object-specific, across methods (@).
  # Class variables: Shared across all instances of a class (@@).
  # Global variables: Accessible everywhere ($).
  # Constants: Shouldn't be modified after assignment (uppercase letters).



#* Parallel Variable Assignment.

a, b, c = 10, 20, 30
p a, b, c # => (Print all)



#* Swapping Variables.

a = 1
b = 2
puts a, b # => 1, 2
puts

a, b = b, a
puts a, b # => 2, 1



#* Integer Methods: next, succ, and pred

puts # => 11
puts # => 0
puts # => 9



#* Object Methods: length, upcase, and downcase

puts # => 11
puts # => HELLO WORLD
puts # => totally different



#* Method Chaining

puts "Hi, there".upcase.length.succ # => 9
puts 10.pred.next.pred # => 11



#* Object Conversion: class, to_i, to_f, and to_s

sample = 5

p sample.to_i # =>
p sample.class # => Integer

p # =>
p # => Float

p # =>
p # => String



#* String Interpolation.

name = "Mark"
age = 25
status = "single"
puts "The name is #{name}. I am #{age} years old. And I am still #{status}."



#* The inspect method.

puts "Hello World".inspect # => "Hello World"
puts 25.90.inspect # => 25.9
puts 34.inspect # => 34
puts ["CYA-Iligan", "Lingkod ng Panginoon - Iligan", "TLOW-Iligan"].inspect # => ["CYA-Iligan", "Lingkod ng Panginoon - Iligan", "TLOW-Iligan"]



#* The nil object.

puts nil # => (Nothing to display)

what_is_the_value_here = puts "hello"
p what_is_the_value_here # => nil



#* Optional Parameters and Default Arguments.

def title_assigner(name, suffix = "The Great.")

end

puts title_assigner("Mark Glenn", "Gabuya.") # => Mark Glenn Gabuya
puts title_assigner("Dave") # => Dave The Great.



#* Other Ways on how to write Arithmetic.

puts 1.+(2) # => 3
puts 5.-(3) # => 2
puts 5.*(5) # => 25
puts 20./(4) # => 5
puts 10.divmod(3) # => [3, 1], (Returns both the quotient and remainder)



#* Float Methods.

p 10.5.floor # => 10
p 10.9.floor # => 10
p 10.9.floor.class # => Integer

p 10.5.ceil # => 11
p 10.9.ceil # => 11
p 10.9.ceil.class # => Integer

p 3.14159.round # => 3
p 3.86.round # => 4
p 3.2.round # => 3
p 3.14159.round(4) # => 3.1416
p 3.14159.round(3) # => 3.142



#* Intro to Booleans

handsome = true
stupid = false
puts handsome
puts handsome.class # => TrueClass
puts stupid
puts stupid.class # => FalseClass



#* Methods with Arguments.

puts "Big Mac".include?("B") # => true
puts "Big Mac".include?("b") # => false
puts("CYA", "Lingkod ng Panginoon", "TLOW") # => (Prints all the string in every line)



#* Methods with Multiple Arguments.

puts 20.between?(10, 30) # => true
puts 20.between?(10, 15) # => false
puts 20.between?(45, 20) # => false
puts 1.2.between?(1.1, 1.3) # => true
puts 1.2.between?(1.1, 1.1) # => false
puts -10.between?(-13, -8) # => true
puts -8.3.between?(-9.5, -7.2) # => true



#* Predicate Methods.

puts 10.odd? # => false
puts 11.odd? # => true
puts 11.odd?.class # => TrueClass

puts 1.even? # => false
puts 2.even? # => true
puts 1.even?.class # => FalseClass

puts 10.positive? # => true
puts -10.positive?.class # => FalseClass
puts -10.negative?.class # => TrueClass
puts 10.positive? # => true

puts 0.zero? # => true
puts 5.zero? # => false
puts 5.zero?.class # => FalseClass



#* Equality Operator.

puts 10 == 10 # => true
puts "handsome" == "pretty" # => false
puts "hello" == "hello" # => true
puts "hello" == "HELLO" # => false
puts "5".to_i == 5 # => true
puts "5" == "5".to_s # => true



#* Inequality Operator.

puts 10 != 5 # => true
puts 10 != 10 # => false
puts "Hello" != "Goodbye" # => true
puts "Hello" != "hello" # => true
puts "Hello" != "Hello " # => true
puts "Hello" != "Hello" # => false
puts 5 != "5" # => true



#* The times, upto, downto, and step methods including block variables.

5.times { print "Hello" } # => (A single-line block)

blocks = 4.times do
  puts "Ruby is awesome."
  puts "I'm having fun learning it."
end

puts blocks # => A multi-line block stored in a variable


5.upto(10) { |current_count| puts "The loop is now on: #{current_count}." }

10.downto(1) { |current_count| puts "The missile will launch in T-Minus: #{current_count}." }

1.step(100) { |current_count| puts "#{current_count}" }

1.step(20, 4) { |current_count| puts "#{current_count}" }



#* Using Descriptive Variables to assign boolean logic.

entree = "Steak"
price = 49.99

food_is_delicious = entree == "Steak"
meal_is_affordable = price < 29.99

if food_is_delicious or meal_is_affordable
  puts "Atleast one condition is satisfied, purchasing the meal now!!!"
end



#* Conditional Assignment Operator.

my_value = nil
p my_value # => nil

my_value ||= 5
p my_value # => 5

my_value ||= 10
p my_value # => 5, unless you set the value again into nil then it will work

my_value = nil
my_value ||= 10
p my_value # => 10, unless you set the value again into nil then it will work



#* String Concatenation Options.

first_name = "Mark Glenn"
last_name = " Gabuya"

p first_name + last_name # => "Mark Glenn Gabuya"
p first_name << last_name # => "Mark Glenn Gabuya", can alter permanently the object
p first_name # => "Mark Glenn Gabuya"

# String Methods often results to complete alteration or modification of the object.
p first_name.concat(last_name) # => "Mark Glenn Gabuya Gabuya"


first_name = "Mark Glenn"
last_name = " Gabuya"
p first_name.concat(last_name) # => "Mark Glenn Gabuya"
p first_name # => "Mark Glenn Gabuya", can also alter permanently the object


first_name = "Mark Glenn"
last_name = " Gabuya"
p first_name.prepend(last_name)



#* The length and size methods.

p "Hello World".length # => 11
p "Hello World".size # => 11

p "".length # => 0
p "".size  # => 0


#* Overwriting Characters. (Single and Multiple)

string = "Rocket Ship"

string[0] = "p"
p string


string[1] = "a"
p string

string[9] = "o"
p string


cravings = "I love blueberry pie."

cravings[7, 4] = "rasp"
#cravings[7, 4] = "cherry"
#cravings[7, 4] = "red"

p cravings # => "I love raspberry pie."



#* Inserting Characters using the insert method.

typo = "GeorgWashington"

typo.insert(5, "e ")
p typo # => "George Washington"



#* The empty? and nil? methods.

p "".empty? # => true
p "abc".empty? # => false

p "Hello".nil? # => false
p "".nil? # => false
p 5.nil? # => false

something = nil
p something.nil? # => true



#* The upcase, downcase, swapcase and capitalize methods.

p "Eiffel Tower".upcase # => "EIFFEL TOWER"
p "Eiffel Tower".downcase # => "eiffel tower"
p "Eiffel Tower".swapcase # => "eIFFEL tOWER"
p "eiffel tower".capitalize # => "Eiffel tower"



#* The reverse method.

p "Ruby".reverse # => ybuR
p "54321".reverse # => 12345



#* The Bang! Method.

word = "spaghetti"

p word.capitalize # => "Spaghetti"
p word # => "spaghetti"

word.upcase!
p word # => "spaghetti"

word.downcase!
p word # => "S"

word.swapcase!
p word # =>

word.capitalize!
p word # =>

word.reverse!
p word # =>
