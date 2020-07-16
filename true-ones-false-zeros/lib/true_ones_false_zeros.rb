def integer_boolean(input)
  new_input = []
  input.each_char do |char|
    if char == '0'
      new_input << false
    else
      new_input << true
    end
  end
  new_input
end
