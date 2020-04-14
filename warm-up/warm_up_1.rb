# WARM UP EXERCISE WORKSHEET 1
# Solve all problems. Sometimes a particular problem may have more than 1 correct answer.
# Problems can also build on previous problems.

# 1) Create an array (store it in a new variable) and push these numbers to the array: 2,4,6,8,10
nathan = ['hugo_tsr', 'justice', 'doozkawa', 'davodka', 'stupeflip']
nathan.push('2', '4', '6', '8', '10')
puts nathan
# 2) Access the 5th element in the array created in step 1 and store it in a new variable
new_nathan = nathan[4]

# 3) Replace the 4th element in the array created in step 1 with the number 27
nathan[3] = '27'

# 4) Store the array's size in a new variable
new_var = nathan.size

# 5) Create a new empty array of size 15
Array.new(15)

# 6) Create a new array of size 10 filled with zeroes (by using a single command)
nathan_2 = Array.new 10, '0'

# 7) Create a string with your first name and store it in a variable
nombre = 'Erika'

# 8) Create a string with your last name and store it in a variable
apellido = 'Alvarez'

# 9) Concatenate the strings from steps 7 & 8 and store the result in a new variable. Don't forget to add a space between first and last name. Do not use string interpolation.
puts nombre + ' ' + apellido

# 10) Do the same as step 9, but use string interpolation.
"Hola #{nombre}  #{apellido}"

# 11) Create a method that takes two strings as arguments (first, last) and and returns a string in the format:
# "Hello, Jon Snow, how are you today?" when first is "Jon" and last is "Snow"
def got(first,last)
  "Hello #{first}  #{last}, how are you today?"
end
got(Jon,Snow)

# 12) Create a method that takes two strings as arguments (first, last) and and prints a string in the format:
# "Hello, Jon Snow, how are you today?" when first is "Jon" and last is "Snow"
def got(first,last)
  print "Hello, #{first}  #{last}, how are you today?"
end
got(jon,snow)
# 13) Store the length of string "pneumonoultramicroscopicsilicovolcanoconiosis" in a new variable
wtf = "pneumonoultramicroscopicsilicovolcanoconiosis".size

# 14) Given any string, find a way to print the string 5 times (by using a single command)
# For example, my_str = " a "
# Expected: " a  a  a  a  a "
mi_amor = "Nathan"
print mi_amor*5
# 15) Create a method that takes two numbers as parameters and returns their sum
def haz_suma(a,b)
a + b
end

# 16) Create a method that takes two numbers as parameters and returns the difference
def diferencia(a,b)
(a - b).abs
end

# 17) Create a method that takes two numbers as parameters and returns the result of dividing the first parameter by the second parameter
def division(a,b)
a / b
end

# 18) Create a method that takes two numbers as parameters and returns the result of multiplying them
def multiplicacion(a,b)
a * b
end

# 19) Create a method that takes two numbers as parameters and returns the remainder after dividing the first by the second
def remainder(a,b)
a % b
end

# 20) Create a method that takes 1 parameter and prints the type of the parameter (e.g. for "hi" it would print "String")
def what_is_it(a)
  a.class
  print a
end


# 21) Create a method that takes 2 numbers as parameters (base & height) and calculates the area of a triangle
def triangle(base,height)
  (base * height) / 2
end
triangle
# 22) Create a method that takes 2 numbers as parameters (base & height) and calculates the area of a triangle, but this time use the methods created in 17 & 18 to calculate your result
def triangle_area(base,height)
division(multiplicacion(base,height),2)
end



# 23) Create a hash to map a person's name to their age (e.g. "Jon" maps to 23, "Mary" maps to 25, etc). Create at least 5 entries
names = { "John" => 23, "Mary" => 25, "Nathan" => 25, "Dany" => 25, "Erika" => 32 }
# 24) Iterate over all elements of the hash from 23 and print the a line in the following format for each key-value pair:
# "Key:Mary, Value:25"
names.each do |key,value|
  puts "Key:#{key}, Value:#{value}"

# 25) Get all keys from the hash created in 24 and store them in a variable (by using a single command)
new_names = names.keys

# 26) Get all values from the hash created in 24 and store them in a variable (by using a single command)
new_names_2 = names.values

# 27) Create an array and add 5 strings. The strings can be whatever you want
historias = ["Hola", "mi", "nombre", "es", "lo que quieras"]

# 28) Iterate over the array created in 27 and print each string
historias.each do |element|
  puts element
end


# 29) Iterate over the array created in 27 and print each string. Use a while loop to do the iteration
index = 0
while index < historias.size
  puts historias[index]
  index += 1
end

# 30) Create a method that takes 1 parameter and returns a boolean value. It will return true if the parameter is a string, false otherwise
def liar(fact)
if fact == fact.to_s
  return true
else
  return false
end


# 31) Create a method that takes 1 parameter and returns a boolean value. It will return true if the parameter is a number, false otherwise
def cypher(number)
  if number == number.to_i
    puts true
  else
    puts false
end

# 32) Create a method that takes 1 boolean parameter called 'hungry' and prints "Not hungry" when the argument is false, and prints "Very hungry" when the argument is true. Use the ternary operator.
def hungry_or_not(hungry)
  if hungry == true
    puts "Very hungry"
  elsif hungry == false
    puts "Not hungry"
  else
    puts "Let's go eat!!!"
  end
end

def hungry_or_not(hungry)
hungry == true ? "Very hungry" : "Not hungry"
end

# 33) Usa a while loop to print "Are we there yet?!!" 10 times
def chandler
  question = 0
    while question < 10
      puts "Are we there yet?"
    question += 1
    end
end


# 34) Create a method that takes a number as a parameter and uses a while loop to print "Are we there yet?!!" n times, where n is the number of times the statement will be printed. For example, when n = 5, it will print "Are we there yet?!!" five times.
def chandler_2(number)
  n = 0
  while number > n
    puts "Are we there yet?"
    n += 1
  end
end

# 35) Create a method that takes two numbers as parameters and calculates the area of a rectangle
def rectangle(a,b)
  c = a * b
end

# 36) Create a method that takes two numbers as parameters and calculates the area of a rectangle, but this time use the method you created in 18 to perform the calculation
def rectangle_2(a,b)
  multiplicacion(a,b)
end

# 37) Given any string, use the ternary operator to print "Yes" or "No" whenever the string contains the letter 'a'
# For example, your statement should print "Yes" for "Hola" and "No" for "Hi"
def letter_a(phrase)
  phrase.downcase['a'] ? "yes" : "no"
end


# 38) Create class Dog. All dogs have a 'name' property and a 'bark()' method. Whenever a dog barks, it should print its name. For example, a dog named "Fluffy" would print "Woof, Fluffy, Woof!"

class Dog
  def initialize(name)
  @name = name
  end
    def bark
    puts "Woof, #{@name}, Woof!"
    end
end
simba = Dog.new("Simbita")
 ==>Woof, Simbita, Woof!
 chicharito = Dog.new("Chicharito")
 molly = Dog.new("Molly")
puffy = Dog.new("Puffy")
 nikki = Dog.new("Nikki")


# 39) Create a list of 5 Dogs (use the class in 38 to create your dog instances).
dogs = ["Simbita", "Chicharito", "Molly", "Puffy", "Nikki"]

# 40) Iterate over the list of dogs created in 39 and make each dog bark
dogs each do |dog|
dog.bark

# 41) Create a hash that maps a dog owner (String) to a dog (Dog). Add 3 owner-to-Dog mappings
dog_owners = []

# 42) Iterate over your hash (created in 41) and print a sentence in the following format for each key-value pair:
# "The dog owner is Jon and Fluffy says: Woof, Fluffy, Woof!"

# 43) Create a hash that maps a food item to a price (maps a String to a Float ). For example, a "beer" would map to 4.5
# Add 5 entries to your hash


# 44) Iterate over all entries in your map created in 43 and calculate the sum of all prices.

# 45) Calculate the sum of all prices in the hash with a single command (hint: exercise 26)

# 46) Calculate the average price for all prices in the hash with a single command (hint: exercise 26)

# 47) Create a method that receives 3 parameters (a, b, & c, which are all integers) , performs a calculation using the following formula, and returns the result:
# ((a - b) + (a - c)) / (2 * c)

# 48) Create another method that does exactly the same logic as the one in 47, but ONLY use the methods you created in exercises 15, 16, 17, & 18 to perform the mathematical operations

# 49) Create a method that asks the user for a favorite color ("What's your favorite color?"), and only stops until the user answers "green"
def green
  puts "What is your favorite color?"
  answer = gets.chomp
  while answer != "green"
    puts "What is your favorite color"
  end


# 50) Create a method that takes 1 parameter called 'total' (float) , calculates a 20% tip, and returns it.


