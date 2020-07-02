def count_occurrences(character, word)
  char_count = 0
  n = word.split('')
  n.each do |char|
    if char.downcase == character.downcase
      char_count += 1
    end
  end
  char_count
end
