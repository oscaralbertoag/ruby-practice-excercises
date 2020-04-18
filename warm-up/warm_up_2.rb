# WARM UP EXERCISE WORKSHEET 2
# Solve all problems. Sometimes a particular problem may have more than 1 correct answer.
# Problems can also build on previous problems.

# 1) Create a method that takes a list of integers as a parameter, and returns the average (Float)
def average(list)
  result = list.sum / list.size
  result.to_f
end

# 2) Create an array and push 5 strings (any string will suffice) into it
gatos = []
gatos.push('roofie', 'blanche', 'figui', 'luna', 'zig')

# 3) Find the Ruby function that allows you to get a random number. Create a statement that prints any random number
print " Gloria was born in 1989 but could have been born in #{Random.rand(1989..2020)}"

# 4) Create an array and push 5 random numbers to it by using the method learned in 4
babies = []
counter = 0
while counter < 5
  babies.push Random.rand(1..90)
  counter += 1
end

# 5) Using Ruby's Date class, create a variable that holds today's date (don't forget to use require 'date')
require 'date'
aujourdhui = Date.today

# 6) Using Ruby's Date class, write a statement that returns true if today is a Friday, false otherwise. Store the result in a variable called 'is_friday'
require 'date'
today = Date.today
is_friday = today.friday?

# 7) Using Ruby's Date class, write a statement that returns true if today's date (day) is an even number, false otherwise. Store the result in a variable called 'is_even'
time = Time.now
today = t.day
is_even = today%2 == 0

# 8) Using the variables created in 6 & 7, write a statement that returns true if today's date (day) is an even number AND it today is also a Friday, false otherwise. This should NOT use if/else (Hint: try testing different variations of days, and even/odd numbers to test different expressions)
is_friday && is_even

# 9) Using the variables created in 6 & 7, write a statement that returns true if today's date (day) is an even number OR today is a Friday; false if neither one is true. This should NOT use if/else (Hint: try testing different variations of days, and even/odd numbers to test different expressions)
is_friday || is_even

# 10) Using the variables created in 6 & 7, write a statement that returns true only if today's date (day) is an even number AND if today is NOT a Friday. This should NOT use if/else
!is_friday && is_even

# 11) Write an expression to generate a random number between 0 and 10
puts "My luck is on point because what were the odds of number #{rand(0..10)} to come out of this sort"

# 12) Write an expression to generate a random number between 50 and 100
puts "My favorite number is #{rand(50..100)}"

# 13) Create an array, add 5 integers, and select a random element from it
jupes = [10, 12, 5, 8, 9]
jupes.sample

# 14) Generate an array from a range. The range should start at 1 and finish at 10.
oneten = (1..10).to_a

# 15) Create two arrays of 5 strings each. Create a new array that contains all elements from both arrays. This can be done with 1 line of code.
a = ("a".."e").to_a + ("a".."e").to_a

# 16) Create an array that contains all the characters in the alphabet with one line of code (hint: use a range: a - z, A - Z). Name this array 'character_set' .This can also be done with 1 line of code.
character_set = ("a".."z").to_a

# 17) Choose a random element from your `character_set` array
character_set.sample

# 18) Print numbers from 5 to 15 by using a loop. Each number should be on a new line.
counter = 5
while counter < 16
  puts counter
  counter += 1
end

for x in 5..15 do
  puts x
end

# 19) Create a method called 'price_after_discount(original_price, discount)' that takes 2 paramenters, the first one is 'original_price' and the second one is named 'discount'
def price_after_discount(original_price, discount)
  final_price = original_price - (original_price * (discount / 100.00))
end
# The method should calculate the final price of an item after the discount (e.g.20%) has been applied. For example, original_price = 100, discount = 20, the result should be 80.0

# 20) Create a class PiggyBank.
class PiggyBank
  def initialize
    @savings = 0
  end

  def deposit(amount)
    @savings += amount
  end

  def show_savings()
    print "You have saved $#{@savings} so far! YAY! "
  end
end

# 21) Use a loop to print the letters of the alphabet backwards (hint: use a range to generate an array with the alphabet characters)
letters = ("a".."z").to_a
index = letters.size - 1
while  index >= 0
  puts letters[index]
  index -= 1
end

# 25) A personal shopping assistant charges you $50 an hour. She will give you a discount of 20% off the total price if you purchase 40 hours or more of her services. Create the method shopping_assistant_cost(total_hours) to calculate how much you will pay based on how many hours the shopping assistant worked for you. The method should return a Float.
# For example, if the total hours were 39, the total cost will be $1950
# If the total hours were 40, the cost will be $1600
def shopping_assistant_cost(total_hours)
  if total_hours >= 40
    (total_hours * 50) - ((total_hours * 50) * 0.20)
  else
    total_hours * 50
  end
end

# 26) You're a smart person with an organized budget. You decide that you will only spend 2% of your monthly salary on Starbucks. Create calculate_total_coffees(monthly_salary, cost_of_coffee_cup) that will tell you how many cups of coffee you can purchase per month based on your monthly salary and the cost of a coffee cup.
# For example, if cost is $5 for your usual Venti caramel macchiato and your monthly salary is $8000, you can buy 32 Venti caramel macchiatos that month.
def calculate_total_coffees(monthly_salary, cost_of_coffee_cup)
  coffees = (monthly_salary * 0.02) / cost_of_coffee_cup
  puts "You can buy #{coffees} coffees this month"
end

# 27) Create fahrenheit_to_celsius(temperature_in_fahrenheit) that converts Fahrenheit to Celsius (Float)
def fahrenheit_to_celsius(temperature_in_fahrenheit)
  (temperature_in_fahrenheit - 32) * 5 / 9
end

# 28) Create celsius_to_fahrenheit(temperature_in_celsius) that converts Celsius to Fahrenheit (Float)
def celsius_to_fahrenheit(temperature_in_celsius)
  (temperature_in_celsius / 5) * 9 + 32
end
