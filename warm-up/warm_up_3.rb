# WARM UP EXERCISE WORKSHEET 3
# Solve all problems. Sometimes a particular problem may have more than 1 correct answer. 
# Problems can also build on previous problems.

# 1) Using a while loop, print all numbers from 30 to 15 (including both 30 & 15).


# 2) The weight of a person is described by the relationship of gravity and an object's mass. 
# The formula:
# weight = mass x gravity
# Create method calculate_mass(weight, gravity) that calculates an object's mass (Float) based on its weight (in kgs) and the gravity (Earth's gravity is 9.81)


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

# 4) Iterate through the hash from 3 and print a message in the following format for each key-value pair:
# "Planet: Earth, Gravity: 9.81 meters per second squared"


# 5) Fetch the gravity value from the 'planets' hash for "venus" and store it in a variable


# 6) Fetch all the keys from the 'planets' hash and store them in a variable


# 7) Considering the formula: weight = mass x gravity, create weight_in_mars(mass) which returns your weight in mars. 
# 7.1) Use the method from 2 to calculate your mass and then pass that to weight_in_mars(mass). 


# 8) Using a loop, print all multiples of 5 starting on 15 and ending on 50 (inclusive)


# 9) Using a loop, print all multiples of 5 starting on 50 and ending on 5 (inclusive)


# 10) Using a for loop and a range, print all numbers between 5 and 20 (inclusive)

# 11) Create a list of 5 words and sort them alphabetically (descending)

# 12) Create a list of 5 words and sort them alphabetically (ascending)

# 13) Given this list: "hola", "como", "estas", "hoy", "adios"
# Join all words into a single string "hola-como-estas-hoy-adios" by using a single command

# 14) Given a sentence, split it by spaces. Store the result in an array. For example, "Hola como estas?" would result in ["Hola", "como", "estas?"]. This can be done with a single command.

# 15) Camel case is when a variable is in the following format: myVariableIsAwesome. For each word, the first letter is capitalized (except the first word). Create method camel_case(words) that takes a list of words and concatenates them and does the necessary adjustments to turn them into camel case. For example, camel_case(["my", "variable", "here"]) would return the following string: "myVariableHere"