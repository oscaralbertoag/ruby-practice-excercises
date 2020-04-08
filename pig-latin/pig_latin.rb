def spanish_pig_latin(sentence)
    vowels = ["a", "á", "e", "é", "i", "í", "o", "ó", "u", "ú"]
    result = ""

    sentence.each_char { |c| 
        result += c + (vowels.include?(c.downcase) ? "f" + c : "")
    }
    result
end