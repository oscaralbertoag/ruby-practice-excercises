def count_true(boolean_list)
  counter = 0
  boolean_list.each do |value|
    counter += 1 if value == true
  end
  counter
end
