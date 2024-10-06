#* Exercise 1: Optional Parameters and Default Arguments.

#* Solution: Calculate the total meal cost with the default tip percentage of 20% or 0.20
def calculate_meal_cost(total_amount, tip_percentage = 0.2)
  total_meal_cost = total_amount + (total_amount * tip_percentage)

  "Total Meal Cost: $#{total_meal_cost}"
end

puts calculate_meal_cost(20, 0.05) # => $21.0
puts calculate_meal_cost(20) # => $24.0
puts calculate_meal_cost(100, 0.12) # => $112.0
puts calculate_meal_cost(100) # => $120.0
puts


#* Solution: String Interpolation
def string_adder(a = "", b = "")
  "#{a} #{b}"
end

puts string_adder("Hello", "World") # => Hello World
puts string_adder("Emilio", "Esteves") # => Emilio Esteves
p string_adder # => " "
puts string_adder("Tiger") # => Tiger
