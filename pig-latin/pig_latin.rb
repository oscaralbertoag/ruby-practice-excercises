def spanish_pig_latin(sentence)
    vowels = ["a","e","i","o","u"]
    result = ""

    sentence.each_char { |c| 
        result += c + (vowels.include?(c) ? "f" + c : "")
    }
    result
end