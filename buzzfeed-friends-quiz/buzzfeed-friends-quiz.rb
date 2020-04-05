class QuizQuestion
    def initialize(question, response_to_character_map)
        @question = question
        @response_to_character_map = response_to_character_map
    end

    def ask_and_get_character_match()
        choice = ""
        first_time_asking = true

        loop do
            if first_time_asking
                puts ""
                puts @question
                first_time_asking = false
            else
                puts "You seem to have typed an invalid response. No worries, but lets try again! "
                puts @question
            end

            choice = gets.chomp.downcase

            break if @response_to_character_map.key?(choice)
        end

        @response_to_character_map[choice]
    end
end


class FriendsQuiz
    def initialize(quiz_questions)
        @quiz_questions = quiz_questions
        @results = {"rachel" => 0, "monica" => 0, "phoebe" => 0, "chandler" => 0, "joey" => 0, "ross" => 0}
    end

    def run()
        welcome_banner

        if start_quiz?
            @quiz_questions.each do |quiz_question|
                character = quiz_question.ask_and_get_character_match
                current_count = @results[character]
                @results[character] = current_count + 1
            end
            present_results
        end
    end

    private

    def welcome_banner
        puts "::::::::::::::::::::Welcome to our Quiz!:::::::::::::::::::::"
        puts "::::::::::::Which F.R.I.E.N.D.S character are you?:::::::::::"
        puts ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
    end

    def start_quiz?()
        print "Are you ready to get started? (yes/no): "
        choice = gets.chomp.downcase
        
        ask_again = false

        loop do
            case choice
            when "yes"
                print "Perfect! Ok, the instructions are simple: just type the response letter that more closely matches your personality! Good luck!\n\n"
                ask_again = false
                return true
            when "no"
                puts "Sounds good! See you later!"
                ask_again = false
                return false
            else
                print "Invalid option! Please type 'yes' to take the quiz or 'no' to exit: "
                choice = gets.chomp.downcase
                ask_again = true
            end
            break if !ask_again
        end
    end

    def get_result_message_for_character(character)
        result_message = "Your match is #{character.capitalize}!!!!!!\n"
        case character
        when "rachel"
            result_message += "You live for fashion, have iconic hairstyles, and are a loyal friend!"
        when "monica"
            result_message += "You like things clean, organized, and have a strong but loving personality!"
        when "phoebe"
            result_message += "You are most likely vegetarian, a bit of a hippie, and have an open mind about everything!"
        when "chandler"
            result_message += "You use jokes as a defense mechanism... kidding! You're kind, witty, and a bit awkward!"
        when "joey"
            result_message += "How you doing? You are a flirt with a big heart. You like the occasional book as long as it doesn't get too scary or have little girl ghost characters in it!"
        when "ross"
            result_message += "You are passionate about science, dinosaurs, and you don't mind correcting your friends grammar. You're means YOU ARE. Your means YOUR!"
        else
            puts "Error! Received this character: #{character}"
            return "Something went wrong... Oooops!"
        end
        
        result_message
    end


    def present_results()
        ordered_results = @results.sort_by { |character, count| count}.reverse
        
        is_first = true
        ordered_results.each do |character, count|
            if is_first
                puts "\nDrumroll please............!!!!!\n"
                puts get_result_message_for_character(character)
                puts "You are:"
                is_first = false
            end
            percentage = (count.to_f/@quiz_questions.size) * 100
            puts "#{percentage}% #{character}"
        end
    end
end

question1 = "1) Do you like sandwiches?
a) I like to eat them, and I also enjoy preparing them and making them pretentious!
b) I like them a normal amount. I do love a turkey sandwich with a slice of gravy-soaked bread in the middle!
c) I love sandwiches! Don't you dare even smell my sandwich without my permission! You'll soak up all the tastiness!
d) Anything BUT traditional English trifle ... get it?
e) I guess. I'm not great at preparing them though. I'm not great at preparing anything in the kitchen actually
f) Yummy! No meat in mine please. Unless I'm pregnant, then I'll eat anything!"

question_response_map1 = {"a"=>"monica", "b"=>"ross", "c"=>"joey", "d"=>"chandler", "e"=>"rachel", "f"=>"phoebe"}
quiz_question1 = QuizQuestion.new(question1, question_response_map1)

question2 = "2) What does 'unagi' mean to you?
a) Some sort of sushi?
b) A state of relaxed awareness, which takes years to master
c) Are you trying to teach me French? Because I'm awesome at French!
d) Freshwater eel in Japanese
e) Pull my finger
f) It reminds me of my teenage years when I'd beat up comic book nerds to take their lunch money. I kind of had an anger problem. I'm all peace and love now!"
question_response_map2 = {"a"=>"rachel", "b"=>"ross", "c"=>"joey", "d"=>"monica", "e"=>"chandler", "f"=>"phoebe"}
quiz_question2 = QuizQuestion.new(question2, question_response_map2)

question3 = "3) What is the opposite of hiding someone's underwear?
a) Wearing everything the perpetrator owns
b) I don't have time for this right now, I'm trying to pick the perfect dress and shoe combination!
c) I don't have time for this right now, do you know what gets out hummus?!
d) If it is a new message, what is he calling to say?
e) Could that be more hilarious?
f) I don't have time for this nonsense. I'm an adult!"
question_response_map3 = {"a"=>"joey", "b"=>"rachel", "c"=>"phoebe", "d"=>"monica", "e"=>"chandler", "f"=>"ross"}
quiz_question3 = QuizQuestion.new(question3, question_response_map3)

question4 = "4) What do you think about London?
a) Everyone wants to talk about London. Next question!
b) London, baby!!!
c) Perfect place for a wedding where everything goes according to your plans.
d) Nothing happened in London. What do you think about London?
e) Showing up unannounced to an ex's wedding in London sounds super fun!
f) I didn't hook up in London. You did!"
question_response_map4 = {"a"=>"phoebe", "b"=>"joey", "c"=>"ross", "d"=>"chandler", "e"=>"rachel", "f"=>"monica"}
quiz_question4 = QuizQuestion.new(question4, question_response_map4)

questions = [quiz_question1, quiz_question2, quiz_question3, quiz_question4]

friends_quiz = FriendsQuiz.new(questions)
friends_quiz.run