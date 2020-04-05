# BuzzFeed F.R.I.E.N.D.S Quiz
Create a Buzzfeed-style personality quiz about friends. This problem is a bit longer so it is broken down into different parts. It has been arranged so that you only need two classes and a handful of methods. You'll write the following classes:
* `QuizQuestion` class, which contains all the information for a specific question
* `FriendsQuiz` class, which contains a list of `QuizQuestion`s and all the logic to ask questions and present results.
***
## QuizQuestion Class
This class has two instance variables:
* `question`: a **string** that contains a question in the following format:
```ruby
question = "1) Is this a question?
a) Yes
b) Maybe
c) I'm confused"
```
* `response_to_character_map`: a **hash** that contains the mappings of the answer-to-Friends-character. For example:
```ruby
response_to_character_map = {"a"=>"chandler", "b"=>"phoebe", "c"=>"joey"}
```
Therefore, when the user responds with a letter, the `response_to_character_map` should be used to fetch the character that matches the response given. In the previous example, if the user typed `c`, the mapped character would be `joey`. This will be used later to tally responses and come up with an overall 'FRIENDS character likeness' score.
***
### Part 1: Create the QuizQuestion initializer
* It must take a `question` and a `response_to_character_map` as parameters
* It must set its instance variables to the values provided in the initializer
#### Usage
```ruby
question = "1) Is this a question?
a) Yes
b) Maybe
c) I'm confused"
response_to_character_map = {"a"=>"chandler", "b"=>"phoebe", "c"=>"joey"}
quiz_question = QuizQuestion.new(question,response_to_character_map)
```
***
### Part 2: Create a method that asks the question
Create the instance method `ask_and_get_character_match()`. This method should execute the following logic:
1. Store the user's choice in a variable
2. Inside a do-while loop, implement the following logic
   1. Print the `question` (use the instance variable):
      * If the user enters invalid input, print `"Invalid choice. Please try again."` and print the question again until the user enters valid input.
   2. Break out of the do-while loop when the user enters a valid choice (hint: a valid choice will have a mapping in the `response_to_character_map`. For example: `"a"`,`"b"`, and `"c"` would have a mapping; anything else won't)
3. Return the mapped character for the provided letter choice. For example: using the data from the examples above, if the user typed `a`, the return value for this method should be `chandler`
#### Usage
```ruby
question = "1) Is this a question?
a) Yes
b) Maybe
c) I'm confused"
response_to_character_map = {"a"=>"chandler", "b"=>"phoebe", "c"=>"joey"}
quiz_question = QuizQuestion.new(question, response_to_character_map)
quiz_question.ask_and_get_character_match
```

#### Expected output
```
1) Is this a question?
a) Yes
b) Maybe
c) I'm confused
c
=> "joey"
```
***
## FriendsQuiz Class
This class contains all the logic to display, execute and calculate quiz results.
##### This class has 2 instance variables:
* `quiz_questions`: an **array** of `QuizQuestion` objects
* `results`: a **hash** that contains a mapping of characters-to-count. This will be used to determine how many times the user has made a choice that matches a specific character. 
##### This class has 5 methods:
* `welcome_banner()`: displays a welcome message to the user
* `start_quiz()?`: asks user whether they want to take the quiz or not
* `get_result_message_for_character(character)`: displays a result message specific to a FRIENDS character
* `present_results()`: calculates and displays final results to the user
* `run()`: executes methods in the following order:
   1. `welcome_banner()`
   2. `start_quiz()?`
   3. `present_results()`
***
### Part 3: Create the FriendsQuiz initializer
* It must take an **array** of `QuizQuestion`s as a parameter (i.e. `quiz_questions`) and initialize its instance variables. It _ONLY_ has 1 parameter. The second instance variable must be initialized _inside_ the initializer with the value shown below:
```ruby
{"rachel" => 0, "monica" => 0, "phoebe" => 0, "chandler" => 0, "joey" => 0, "ross" => 0}
```
Here, all counters have been initialized to zero. This will change every time the quiz-taker picks an answer. Once the quiz is finished, the `results` instance variable will be used to find the top match and present it to the user. For example, the following final tally would result in a 100% likeness to Joey if the quiz has 4 questions:
```ruby
{"rachel" => 0, "monica" => 0, "phoebe" => 0, "chandler" => 0, "joey" => 4, "ross" => 0}
```
#### Usage
```ruby
questions = [quiz_question1, quiz_question2] 
friends_quiz = FriendsQuiz.new(questions)
```
***
### Part 4: Create the banner method
Create an instance method called `welcome_banner` that prints the following:
```
::::::::::::::::::::Welcome to our Quiz!:::::::::::::::::::::
::::::::::::Which F.R.I.E.N.D.S character are you?:::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
```
***
### Part 5: Create a method to display the top likeness result
Create an instance method called `get_result_message_for_character(character)`
It should:
* take a **string** as a parameter named `character`
* return a **string** with the appropriate result message (specific to a FRIENDS character) as described below:
* It should first add `Your match is FRIENDS-CHARACTER-NAME-HERE!!!!!!` to the string to be returned
* Then, if `character` is Monica, append `You like things clean, organized, and have a strong but loving personality!`
* Then, if `character` is Rachel, append `You live for fashion, have iconic hairstyles, and are a loyal friend!`
* Then, if `character` is Phoebe, append `You are most likely vegetarian, a bit of a hippie, and have an open mind about everything!`
* Then, if `character` is Chandler, append `You use jokes as a defense mechanism... kidding! You're kind, witty, and a bit awkward!`
* Then, if `character` is Ross, append `You are passionate about science, dinosaurs, and you don't mind correcting your friends grammar. You're means YOU ARE. Your means YOUR!`
* Then, if `character` is Joey, append `How you doing? You are a flirt with a big heart. You like the occasional book as long as it doesn't get too scary or have little girl ghost characters in it!`
* Then, if `character` doesn't match any of the previous names, return `Ooops! Unknown character provided: CHARACTER-VALUE-HERE`
#### Usage
```ruby
get_result_message_for_character("rachel")

get_result_message_for_character("lorelai")

```
#### Expected Output
```
=> "Your match is Rachel!!!!!!
You live for fashion, have iconic hairstyles, and are a loyal friend!"

=> "Ooops! Unknown character provided: lorelai"
```
***
### Part 6: Create a method to see if the user wants to take the quiz
Create an instance method named `start_quiz?()` which returns a **boolean**. The purpose of this method is to ask the user if they want to start the quiz, take user input from the terminal, and return `true` if the user said `yes` and `false` if the user said `no`. If an invalid response is registered, it tells the user about it and keeps asking until a valid choice has been registered.
Logic to be implemented:
* Print `"Are you ready to get started? (yes/no): "`
* Store the user's choice in a variable (**string**)
* If the user's choice is `yes`, print `"Perfect! Ok, the instructions are simple: just type the response letter that more closely matches your personality! Good luck!\n\n"` and return `true`. 
* If the user's choice is `no`, print `"Sounds good! See you later!"` and return `false`
* If the user's choice is invalid, print `"Invalid option! Please type 'yes' to take the quiz or 'no' to exit: "` and ask the initial question again `"Are you ready to get started? (yes/no): "`
#### Usage & Expected Output
```
irb(main)> start_quiz?
Are you ready to get started? (yes/no): no
Sounds good! See you later!
=> false

irb(main)> start_quiz?
Are you ready to get started? (yes/no): yes
Perfect! Ok, the instructions are simple: just type the response letter that more closely matches your personality! Good luck!

=> true
irb(main)> start_quiz?
Are you ready to get started? (yes/no): qwerty
Invalid option! Please type 'yes' to take the quiz or 'no' to exit: yes
```
***
### Part 7: Create a method to present the results
Create an instance method named `present_results()`. This method takes no parameters and it returns nothing. It will only print out the results to the console.
Implement the following logic:
* Sort the `results` **hash** in descending order by value ( in this case the value is the count for each character). For example:
If you have the following `results` hash:
```ruby
{"rachel" => 5, "monica" => 2, "phoebe" => 4, "chandler" => 1, "joey" => 6, "ross" => 0}
```
The sorted pairs should look something like this:
```ruby
[["joey", 6], ["rachel", 5], ["phoebe", 4], ["monica", 2], ["chandler", 1], ["ross", 0]]
```
* For the first item (the top result, in the example it would be `"joey" => 6`) call `get_result_message_for_character(character)` to print the custom message based on the character. Then print `You are: \n`
* Print the likeness percentage for each character in the hash. For the example above, the results would be the following (assuming 18 quiz questions in total):
```
33.33% Joey
27.77% Rachel
22.22% Phoebe
11.11% Monica
5.55% Chandler
0.00% Ross
```
#### Expected Output
```
Your match is Joey!!!!!!
How you doing? You are a flirt with a big heart. You like the occasional book as long as it doesn't get too scary or have little girl ghost characters in it!
You are:
33.33% Joey
27.77% Rachel
22.22% Phoebe
11.11% Monica
5.55% Chandler
0.00% Ross
```
***
### Part 8: Create a method to execute the quiz
Create an instance method called `run()`  which will not take any parameters or return any values. This method will orchestrate the other methods to put together a FRIENDS quiz.
The method should implement the following logic:
1. Call the `welcome_banner()` method
2. Call the `start_quiz?()` method 
3. If the user chooses to take the quiz, for each quiz question in the list `quiz_questions` (instance variable containing a list of `QuizQuestion`s) call the `QuizQuestion` instance method `ask_and_get_character_match()`. This method returns a **string** with a character match (e.g. if the user chose `a` for the current question, `current_question.ask_and_get_character_match()` will return the mapped value, which is one of the 6 friends characters, e.g. `"rachel"`). Use this information to keep a tally of how many matches per character are found and store them in the `results` instance variable (**hash**)
4. After all questions are processed, call the `present_results()` method.
#### Usage
Given a list of existing `QuizQuestion`s:
```ruby
questions = [quiz_question1, quiz_question2, quiz_question3, quiz_question4]
friends_quiz = FriendsQuiz.new(questions)
friends_quiz.run
```
