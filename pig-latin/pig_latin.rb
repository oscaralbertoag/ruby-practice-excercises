def pig_latin(sentence)
  vowels = ['a', 'e', 'i', 'o', 'u']
  result = ''

  sentence.each_char do |char|
    result += char
    result += (vowels.include? char.downcase) ? 'f' + char : ''
  end
  result
end

