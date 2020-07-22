def integer_boolean(input)
  new_input = []
  input.each_char do |char|
    char != '0' ? new_input << true : new_input << false
  end
  new_input
end
