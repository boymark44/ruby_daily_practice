#* Exercise 1: Optional Parameters and Default Arguments.

# Calculate the total meal cost with the default tip percentage of 20% or 0.20
def calculate_meal_cost(total_amount, tip_percentage = 0.2)
  # total_amount + (total_amount * tip_percentage):
  bill = total_amount + (total_amount * tip_percentage)
end

puts calculate_meal_cost(20, 0.05) # => $21.0
puts calculate_meal_cost(20) # => $24.0
puts calculate_meal_cost(100, 0.12) # => $112.0
puts calculate_meal_cost(100) # => $120.0
puts


# Another function called string_adder
def string_adder(a = "", b = "")
  # Interpolate a and b:
  string_interpolated = "#{a} #{b}"

  string_interpolated
end

puts string_adder("Hello", "World") # => Hello World
puts string_adder("Emilio", "Esteves") # => Emilio Esteves
p string_adder # => " "
puts string_adder("Tiger") # => Tiger
