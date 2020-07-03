def hacker_speak(word)
  hacker_alphabet = { 'a' => 4, 'o' => 0, 's' => 5, 'e' => 3, 'i' => 1 }
  new_word = []
  word.each_char do |char|
    if hacker_alphabet.include?(char.downcase)
      new_word << hacker_alphabet[char.downcase]
    else
      new_word << char
    end
  end
  new_word.join
end


# def hacker_speak(word)
#   new_word = []
#   word.each_char do |char|
#     if char == 'a'
#       new_word << 4
#     elsif char == 'o'
#       new_word << 0
#     elsif char == 's'
#       new_word << 5
#     elsif char == 'e'
#       new_word << 3
#     elsif char == 'i'
#     new_word << 1
#     else
#     new_word << char
#     end
#   end
#   new_word.join
# end
