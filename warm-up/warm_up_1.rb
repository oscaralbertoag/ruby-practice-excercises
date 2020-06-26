# WARM UP EXERCISE WORKSHEET 1
# Solve all problems. Sometimes a particular problem may have more than 1 correct answer.
# Problems can also build on previous problems.

# 1) Create an array (store it in a new variable) and push these numbers to the array: 2,4,6,8,10
yellow = [2,4,6,8,10]

# 2) Access the 5th element in the array created in step 1 and store it in a new variable
yellow[4] = "ten"

# 3) Replace the 4th element in the array created in step 1 with the number 27
yellow[3] = 27
# 4) Store the array's size in a new variable
numbers = yellow.size

# 5) Create a new empty array of size 15
Array.new(15)

# 6) Create a new array of size 10 filled with zeroes (by using a single command)
Array.new(10,0)

# 7) Create a string with your first name and store it in a variable
a = "Erika"

# 8) Create a string with your last name and store it in a variable
b = "Alvarez"

# 9) Concatenate the strings from steps 7 & 8 and store the result in a new variable. Don't forget to add a space between first and last name. Do not use string interpolation.
c = (a + " " + b)

# 10) Do the same as step 9, but use string interpolation.
d = "#{a} #{b}"

# 11) Create a method that takes two strings as arguments (first, last) and and returns a string in the format:
# "Hello, Jon Snow, how are you today?" when first is "Jon" and last is "Snow"
def got(first, last)
  "Hello, #{first} #{last}, how are you today?"
end

# 12) Create a method that takes two strings as arguments (first, last) and and prints a string in the format:
# "Hello, Jon Snow, how are you today?" when first is "Jon" and last is "Snow"
def got2(first, last)
  print "Hello, #{first} #{last}, how are you today?"
end

# 13) Store the length of string "pneumonoultramicroscopicsilicovolcanoconiosis" in a new variable
long = "pneumonoultramicroscopicsilicovolcanoconiosis".length

# 14) Given any string, find a way to print the string 5 times (by using a single command)
# For example, my_str = " a "
# Expected: " a  a  a  a  a "
my_str = 'a'
(my_str + ' ') * 5

# 15) Create a method that takes two numbers as parameters and returns their sum
def s(a, b)
  a + b
end
# 16) Create a method that takes two numbers as parameters and returns the difference
def d(a, b)
  a - b
end
# 17) Create a method that takes two numbers as parameters and returns the result of dividing the first parameter by the second parameter
def di(a, b)
  a / b
end

# 18) Create a method that takes two numbers as parameters and returns the result of multiplying them
def m(a, b)
  a * b
end
# 19) Create a method that takes two numbers as parameters and returns the remainder after dividing the first by the second
def re(a, b)
  a % b
end

# 20) Create a method that takes 1 parameter and prints the type of the parameter (e.g. for "hi" it would print "String")
def type(a)
  a.class
end

# 21) Create a method that takes 2 numbers as parameters (base & height) and calculates the area of a triangle
def area(a,b)
  (a * b) / 2
end

# 22) Create a method that takes 2 numbers as parameters (base & height) and calculates the area of a triangle, but this time use the methods created in 17 & 18 to calculate your result
def area2(a, b)
  di((m(a,b)), 2)
end

# 23) Create a hash to map a person's name to their age (e.g. "Jon" maps to 23, "Mary" maps to 25, etc). Create at least 5 entries
classroom = {"Jon"=>23, "Mary"=>39, "Nathan"=>26, "Louie"=>28, "Val"=>25}

# 24) Iterate over all elements of the hash from 23 and print the a line in the following format for each key-value pair:
# "Key:Mary, Value:25"
classroom.each do |key, value|
puts "Key:#{key}, Value:#{value}"
end
# 25) Get all keys from the hash created in 24 and store them in a variable (by using a single command)
names = classroom.keys
# 26) Get all values from the hash created in 24 and store them in a variable (by using a single command)
ages = classroom.values
# 27) Create an array and add 5 strings. The strings can be whatever you want
ass = Array.new(5,"a")
# 28) Iterate over the array created in 27 and print each string
ass.each do |a|
  puts a
end
# 29) Iterate over the array created in 27 and print each string. Use a while loop to do the iteration


# 30) Create a method that takes 1 parameter and returns a boolean value. It will return true if the parameter is a string, false otherwise
def is_string(a)
 if a.class == String
 puts true
 else
 puts false
 end
end
# 31) Create a method that takes 1 parameter and returns a boolean value. It will return true if the parameter is a number, false otherwise
def is_number(b)
  if b.class == Integer
    true
  else
    false
  end
end

# 32) Create a method that takes 1 boolean parameter called 'hungry' and prints "Not hungry" when the argument is false, and prints "Very hungry" when the argument is true. Use the ternary operator.
def kiki(hungry)
  hungry ? "Very hungry" : "Not hungry"
end

# 33) Usa a while loop to print "Are we there yet?!!" 10 times
counter = 0
while counter < 10
  puts "Are we there yet?"
  counter += 1
end

# 34) Create a method that takes a number as a parameter and uses a while loop to print "Are we there yet?!!" n times, where n is the number of times the statement will be printed. For example, when n = 5, it will print "Are we there yet?!!" five times.
def kid(n)
  counter = 0
  while counter < n
    puts "Are we there yet?"
    counter += 1
  end
end

# 35) Create a method that takes two numbers as parameters and calculates the area of a rectangle
def recti(a, b)
  a * b
end

# 36) Create a method that takes two numbers as parameters and calculates the area of a rectangle, but this time use the method you created in 18 to perform the calculation
def rectu(a, b)
  recti(a,b)
end

# 37) Given any string, use the ternary operator to print "Yes" or "No" whenever the string contains the letter 'a'
# For example, your statement should print "Yes" for "Hola" and "No" for "Hi"
def a_or_not(a)
  a.include?("a") ? "Yes" : "No"
end


# 38) Create class Dog. All dogs have a 'name' property and a 'bark()' method. Whenever a dog barks, it should print its name. For example, a dog named "Fluffy" would print "Woof, Fluffy, Woof!"
class Dog
  def initialize(name)
  @name = name
  end

  def bark
    "Woof, #{@name}, Woof!"
  end
end

# 39) Create a list of 5 Dogs (use the class in 38 to create your dog instances).
dogs = [ candy = Dog.new("candy"), scoob = Dog.new("Scooby"), mol = Dog.new("Mol"),pambazo = Dog.new("Pambazo"), enchilada = Dog.new("enchilada") ]

# 40) Iterate over the list of dogs created in 39 and make each dog bark
dogs.map { |dog| dog.bark }
# 41) Create a hash that maps a dog owner (String) to a dog (Dog). Add 3 owner-to-Dog mappings
owner_to_dog = {"Ozz" => enchilada, "Mimi"=> pambazo, "Sestra" => scoob}

# 42) Iterate over your hash (created in 41) and print a sentence in the following format for each key-value pair:
# "The dog owner is Jon and Fluffy says: Woof, Fluffy, Woof!"
owner_to_dog.each do |key, value|
  puts "The dog owner is #{key} and #{value} dog.bark"
end

# 43) Create a hash that maps a food item to a price (maps a String to a Float ). For example, a "beer" would map to 4.5
# Add 5 entries to your hash
les_petits = {"beer"=> 4.5, "wine"=>5.00, "cider"=>4.00, "pastis"=>2.0, "jagger"=> 3.4}
# 44) Iterate over all entries in your map created in 43 and calculate the sum of all prices.
suma = 0
les_petits.each do |key, value|
end

# 45) Calculate the sum of all prices in the hash with a single command (hint: exercise 26)
les_grands = les_petits.values.sum
les_grands.sum
# 46) Calculate the average price for all prices in the hash with a single command (hint: exercise 26)
les_petits.values.sum
# 47) Create a method that receives 3 parameters (a, b, & c, which are all integers) , performs a calculation using the following formula, and returns the result:
# ((a - b) + (a - c)) / (2 * c)
def calculate(a, b, c)
((a - b) + (a - c)) / (2 * c)
end
# 48) Create another method that does exactly the same logic as the one in 47, but ONLY use the methods you created in exercises 15, 16, 17, & 18 to perform the mathematical operations
def method_usage(a, b, c)

end

# 49) Create a method that asks the user for a favorite color ("What's your favorite color?"), and only stops until the user answers "green"
def fave
  puts "What's your favorite color?"
  answer = gets.chomp
  while answer != "green"
   puts "What's your favorite color?"
   answer = gets.chomp
 end
end

# 50) Create a method that takes 1 parameter called 'total' (float) , calculates a 20% tip, and returns it.
def tipping(total)
  (total * 0.20) + total
end


