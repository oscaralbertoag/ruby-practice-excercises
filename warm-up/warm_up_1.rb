# WARM UP EXERCISE WORKSHEET 1
# Solve all problems. Sometimes a particular problem may have more than 1 correct answer.
# Problems can also build on previous problems.

# 1) Create an array (store it in a new variable) and push these numbers to the array: 2,4,6,8,10
numbers = []
numbers.push(2,4,6,8,10)

# 2) Access the 5th element in the array created in step 1 and store it in a new variable
new_variable = numbers[4]

# 3) Replace the 4th element in the array created in step 1 with the number 27
numbers[3] = 27

# 4) Store the array's size in a new variable
taille = numbers.size

# 5) Create a new empty array of size 15
Array.new(15)

# 6) Create a new array of size 10 filled with zeroes (by using a single command)
Array.new(10, 0)

# 7) Create a string with your first name and store it in a variable
my_name = 'Erika'

# 8) Create a string with your last name and store it in a variable
last_name = 'Alvarez'

# 9) Concatenate the strings from steps 7 & 8 and store the result in a new variable. Don't forget to add a space between first and last name. Do not use string interpolation.
full_name = my_name + ' ' + last_name

# 10) Do the same as step 9, but use string interpolation.
full_name = "#{my_name} #{last_name}"

# 11) Create a method that takes two strings as arguments (first, last) and and returns a string in the format:
# "Hello, Jon Snow, how are you today?" when first is "Jon" and last is "Snow"
def jonsnow(first, last)
  first = 'Jon'
  last = 'Snow'
"Hello, #{first} #{last}, how are you today?"
end

# 12) Create a method that takes two strings as arguments (first, last) and and prints a string in the format:
# "Hello, Jon Snow, how are you today?" when first is "Jon" and last is "Snow"
def jonsnow2(first, last)
  first = 'Jon'
  last = 'Snow'
  print "Hello, #{first} #{last}, how are you today?"
end

# 13) Store the length of string "pneumonoultramicroscopicsilicovolcanoconiosis" in a new variable
longest = 'pneumonoultramicroscopicsilicovolcanoconiosis'.size

# 14) Given any string, find a way to print the string 5 times (by using a single command)
# For example, my_str = " a "
# Expected: " a  a  a  a  a "
sentence = print "Erika is brilliant " * 5

# 15) Create a method that takes two numbers as parameters and returns their sum
def suma(a, b)
  a + b
end

# 16) Create a method that takes two numbers as parameters and returns the difference
def resta(a, b)
  a - b
end

# 17) Create a method that takes two numbers as parameters and returns the result of dividing the first parameter by the second parameter
def division(a, b)
  a / b
end

# 18) Create a method that takes two numbers as parameters and returns the result of multiplying them
def multiplicacion(a, b)
  a * b
end

# 19) Create a method that takes two numbers as parameters and returns the remainder after dividing the first by the second
def remainder(a, b)
  a % b
end

# 20) Create a method that takes 1 parameter and prints the type of the parameter (e.g. for "hi" it would print "String")
def type(a)
  print a.class
end

# 21) Create a method that takes 2 numbers as parameters (base & height) and calculates the area of a triangle
def triangle(base, height)
  (base * height) / 2
end

# 22) Create a method that takes 2 numbers as parameters (base & height) and calculates the area of a triangle, but this time use the methods created in 17 & 18 to calculate your result
def area(base, height)
  division((multiplicacion(base,height)), 2)
end

# 23) Create a hash to map a person's name to their age (e.g. "Jon" maps to 23, "Mary" maps to 25, etc). Create at least 5 entries
amigos = { "Jon"=> 23, "Mary"=> 26, "Nathan" =>25, "Mimi" =>61, "Katie" =>27}

# 24) Iterate over all elements of the hash from 23 and print the a line in the following format for each key-value pair:
# "Key:Mary, Value:25"
amigos.each do |amigo,edad|
  print "Key:#{amigo}, Value:#{edad} "
end

# 25) Get all keys from the hash created in 24 and store them in a variable (by using a single command)
todos_amigos = amigos.keys

# 26) Get all values from the hash created in 24 and store them in a variable (by using a single command)
todas_edades = amigos.values

# 27) Create an array and add 5 strings. The strings can be whatever you want
beyonce_songs = ["Drunk in love", "Irreplaceable", "Halo", "XO", "Single Ladies"]

# 28) Iterate over the array created in 27 and print each string
beyonce_songs.each do |title|
  print title
end

# 29) Iterate over the array created in 27 and print each string. Use a while loop to do the iteration
# FIX ME
index = 0
while index <= beyonce_songs.size
  print beyonce_songs[index]
  index += 1
end

# 30) Create a method that takes 1 parameter and returns a boolean value. It will return true if the parameter is a string, false otherwise
# USE TERNARY CORRECTED
def s_or_not(phrase)
  phrase.class == String ? true : false
end

# 31) Create a method that takes 1 parameter and returns a boolean value. It will return true if the parameter is a number, false otherwise
# USE TERNARY CORRECTED
def i_or_not(n)
  n.class == Integer ? true : false
end
# 32) Create a method that takes 1 boolean parameter called 'hungry' and prints "Not hungry" when the argument is false, and prints "Very hungry" when the argument is true. Use the ternary operator.
# REQUIREMENTS NOT FULLY MET - CORRECTED
def joey(hungry)
  hungry == true ? (print "Very hungry") : (print "Not hungry")
end

# 33) Usa a while loop to print "Are we there yet?!!" 10 times
def chandler
  counter = 0
while counter <=9
  puts "Are we there yet?"
  counter+=1
end
end

# 34) Create a method that takes a number as a parameter and uses a while loop to print "Are we there yet?!!" n times, where n is the number of times the statement will be printed. For example, when n = 5, it will print "Are we there yet?!!" five times.
def chandler2(number)
  n = 0
while number > n
  puts "Are we there yet?"
  n += 1
end
end

# 35) Create a method that takes two numbers as parameters and calculates the area of a rectangle
def rectangle(a, b)
  c = a * b
end
# 36) Create a method that takes two numbers as parameters and calculates the area of a rectangle, but this time use the method you created in 18 to perform the calculation
# CORRECT, BUT READ INSTRUCTIONS CAREFULLY - CORRECTED(USED METHOD IN 18)
def area(a, b)
  multiplicacion(a, b)
end

# 37) Given any string, use the ternary operator to print "Yes" or "No" whenever the string contains the letter 'a'
# For example, your statement should print "Yes" for "Hola" and "No" for "Hi"
def a_or(phrase)
  phrase.downcase['a'] ? 'Yes' : 'No'
end

# 38) Create class Dog. All dogs have a 'name' property and a 'bark()' method. Whenever a dog barks, it should print its name. For example, a dog named "Fluffy" would print "Woof, Fluffy, Woof!"
class Dog
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def bark
    puts "Woof, #{@name}, Woof!"
  end
end

# 39) Create a list of 5 Dogs (use the class in 38 to create your dog instances).
scooby = Dog.new('scooby')
doo = Dog.new('doo')
kix = Dog.new('kix')
azz = Dog.new('azz')
rex = Dog.new('rex')
doggies = [scooby, doo, kix, azz, rex]

# 40) Iterate over the list of dogs created in 39 and make each dog bark
doggies.each do |dog|
  dog.bark
end

# 41) Create a hash that maps a dog owner (String) to a dog (Dog). Add 3 owner-to-Dog mappings
happiness = { 'Mimi' => scooby, 'Ozzie' => rex, 'Dany' => azz }

# 42) Iterate over your hash (created in 41) and print a sentence in the following format for each key-value pair:
# "The dog owner is Jon and Fluffy says: Woof, Fluffy, Woof!"
# REQUIREMENTS NOT FULLY MET
happiness.each do |owner, dog|
  puts "The dog onwer is #{owner} and #{dog.bark}"
end

# 43) Create a hash that maps a food item to a price (maps a String to a Float ). For example, a "beer" would map to 4.5
# Add 5 entries to your hash
bar = { 'mojito' => 10, 'vin' => 4, 'beer' => 5, 'cider' => 5, 'margarita' => 6 }

# 44) Iterate over all entries in your map created in 43 and calculate the sum of all prices.
# FIX ME
  bar.each do |value|
  puts value.sum

# 45) Calculate the sum of all prices in the hash with a single command (hint: exercise 26)
bar.values.sum

# 46) Calculate the average price for all prices in the hash with a single command (hint: exercise 26)
bar.values.sum / bar.size

# 47) Create a method that receives 3 parameters (a, b, & c, which are all integers) , performs a calculation using the following formula, and returns the result:
# ((a - b) + (a - c)) / (2 * c)
def hey(a, b, c)
  ((a - b) + (a - c)) / (2 * c)
end

# 48) Create another method that does exactly the same logic as the one in 47, but ONLY use the methods you created in exercises 15, 16, 17, & 18 to perform the mathematical operations
def hey2(a, b, c)
  division((resta(a,b) + resta(a,c)), multiplicacion(2,c))
end

# 49) Create a method that asks the user for a favorite color ("What's your favorite color?"), and only stops until the user answers "green"
def green
  puts "What's your favorite color?"
  answer = gets.chomp
while answer != 'green'
  puts "What's your favorite color?"
  answer = gets.chomp
  end
end

# 50) Create a method that takes 1 parameter called 'total' (float) , calculates a 20% tip, and returns it.
def tip(total)
  total.to_f * 0.20
end

def tiempo_en_resolver(a, b, c, d, e)
  total = a + b + c + d + e
  average = total.to_f / 50
  puts "Te tardaste #{total} minutos en resolver los ejercicios del warmup, lo que da un promedio de #{average} minutos por ejercicio "
end
