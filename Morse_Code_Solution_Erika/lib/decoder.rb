def decode(morse_text)
  words = morse_text.split('|')
  decoded_text = ''

  words.each_with_index do |word, index|
    if (words.size - 1) == index
      decoded_text += decode_word(word)
    else
      decoded_text += decode_word(word) + ' '
    end
  end

 decoded_text
end

def decode_word(word)
  symbols = word.split(' ')
    decoded_word = ''

  symbols.each do |symbol|
    decoded_word += decode_symbol(symbol)
  end
  decoded_word

 end

def decode_symbol(symbols)
  morse_alphabet = { '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e', '..-.' => 'f', '--.' => 'g', '....' => 'h', '..' => 'i', '.---' => 'j', '-.-' => 'k', '.-..' => 'l', '--' => 'm', '-.' => 'n', '---' => 'o', '.--.' => 'p', '--.-' => 'q', '.-.' => 'r', '...' => 's', '-' =>'t', '..-' => 'u', '...-' => 'v', '.--' => 'w', '-..-' => 'x', '-.--' => 'y', '--..' => 'z', '|' => ' ' }
  morse_alphabet[symbols].upcase
end
