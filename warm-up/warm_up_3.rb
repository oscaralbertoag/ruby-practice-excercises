# WARM UP EXERCISE WORKSHEET 3
# Solve all problems. Sometimes a particular problem may have more than 1 correct answer.
# Problems can also build on previous problems.

# 1) Using a while loop, print all numbers from 30 to 15 (including both 30 & 15).
counter = 30
  while counter >= 15
  puts counter
  counter -= 1
end

# 2) The weight of a person is described by the relationship of gravity and an object's mass.
# The formula:
# weight = mass x gravity
# Create method calculate_mass(weight, gravity) that calculates an object's mass (Float) based on its weight (in kgs) and the gravity (Earth's gravity is 9.81)

def calculate_mass(weight, gravity)
 mass = weight / gravity
 puts "Your mass is #{mass.to_f}"
end

# 3) Create a hash named 'planets' that maps a planet's name to its gravity (in m/s^2 - Float), for example:
# The key-value pairs are:
# 	Jupiter 24.79
# 	Neptune 11.15
# 	Saturn 	10.44
# 	Earth 	9.81
# 	Uranus 	8.87
# 	Venus 	8.87
# 	Mars 	3.71
# 	Mercury 3.7
# 	Pluto 	0.62
planets = {"Jupiter" => 24.79, "Neptune" => 11.15, "Saturn" => 10.44, "Earth" => 9.81, "Uranus" => 8.87, "Venus" => 8.87, "Mars" => 3.71, "Mercury" => 3.7, "Pluto" => 0.62}

# 4) Iterate through the hash from 3 and print a message in the following format for each key-value pair:
# "Planet: Earth, Gravity: 9.81 meters per second squared"
planets.each do |key, value|
  print "Planet: #{key}, Gravity: #{value} meters per second squared. "
end


# 5) Fetch the gravity value from the 'planets' hash for "venus" and store it in a variable
gravity_venus = planets["Venus"]


# 6) Fetch all the keys from the 'planets' hash and store them in a variable
planets_names = planets.keys

# 7) Considering the formula: weight = mass x gravity, create weight_in_mars(mass) which returns your weight in mars.

def weight_in_mars(mass)
  mass * 3.71
end

# 7.1) Use the method from 2 to calculate your mass and then pass that to weight_in_mars(mass).
weight_in_mars(calculate_mass(60, 9.81))

# 8) Using a loop, print all multiples of 5 starting on 15 and ending on 50 (inclusive)

counter = 10
while counter < 50
  puts counter += 5
end

counter = 15
while counter <= 50
  puts counter
  counter += 5
end

# 9) Using a loop, print all multiples of 5 starting on 50 and ending on 5 (inclusive)
counter = 50
while counter >= 5
  puts counter
  counter -= 5
end

# 10) Using a for loop and a range, print all numbers between 5 and 20 (inclusive)
for x in 5..20
    puts x
end
# 11) Create a list of 5 words and sort them alphabetically (descending)
girlfriends = ["Zania", "Carian", "Sessica", "Aaura", "Laty"]
girlfriends.sort.reverse

# 12) Create a list of 5 words and sort them alphabetically (ascending)
girlfriends.sort

# 13) Given this list: "hola", "como", "estas", "hoy", "adios"
# Join all words into a single string "hola-como-estas-hoy-adios" by using a single command
["hola", "como", "estas", "hoy", "adios"].join("-")

# 14) Given a sentence, split it by spaces. Store the result in an array. For example, "Hola como estas?" would result in ["Hola", "como", "estas?"]. This can be done with a single command.
new = ("Hola como estas?").split


# 15) Camel case is when a variable is in the following format: myVariableIsAwesome. For each word, the first letter is capitalized (except the first word). Create method camel_case(words) that takes a list of words and concatenates them and does the necessary adjustments to turn them into camel case. For example, camel_case(["my", "variable", "here"]) would return the following string: "myVariableHere"
def camel_case(words)
  palabra_final = ''
  words.join

  words.each_with_index do |word, index|
    unless index == 0
      palabra_final += word.capitalize
    else
      palabra_final += word
    end
  end
  palabra_final
end

