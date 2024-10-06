#* The gets method in Ruby.

# Implement a simple greeting (name, age and simple greeting message) using gets method:

print "Hi, what is your name? "
name = gets.chomp

print "Age? "
age = gets.chomp

puts "Name: #{name}."
puts "Age: #{age}."


print "Doing all right? "
response = gets.chomp

puts "That's amazing. Keep it up!!!"
