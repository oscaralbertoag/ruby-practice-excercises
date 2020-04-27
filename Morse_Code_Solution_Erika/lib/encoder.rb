def encode(text)
  # TODO: write a method which returns the morse sentence for the given text
  # NOTE: you may want to extract a `encode_word` method
  index = 0
  encoded_text = ''
  words = text.delete(",'").split(' ')
  words.each do |word|
    if words.size - 1 == index
      encoded_text += encode_word(word)
    else
      encoded_text += encode_word(word) + '|'
    end
    index += 1
  end
  encoded_text
end

def encode_word(word)

  morse_result = ''
  alphabet = {"a" => ".-", "b" => "-...", "c" => "-.-.", "d" => "-..", "e" => ".", "f" => "..-.", "g" => "--.", "h" => "....", "i" => "..", "j" => ".---", "k" => "-.-", "l" => ".-..", "m" => "--", "n"=>"-.", "o" => "---", "p" => ".--.", "q" => "--.-", "r" => ".-.", "s" => "...", "t" => "-", "u" => "..-", "v"=>"...-", "w" => ".--", "x"=>"-..-", "y" => "-.--", "z" => "--..", "1" => ".----", "2" => "..---", "3"=> "...--", "4" => "....-", "5"=>".....", "6"=>"-....", "7"=>"--...", "8"=>"---..", "9" => "----.", "0"=>"-----", "."=>".-.-.-", ","=>"--..--", "?"=>"..--..", "!" => "-.-.--"}

  index = 0
  word.each_char do |char|
    if word.size - 1 == index
      morse_result += alphabet[char.downcase]
    else
      morse_result += alphabet[char.downcase] + ' '
      index += 1
    end
  end
  morse_result
end
