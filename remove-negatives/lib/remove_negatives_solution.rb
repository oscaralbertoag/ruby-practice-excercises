def remove_negatives(numbers)
  numbers.each do |n|
    numbers.delete_if { |n| n.negative? }
  end
  numbers
end
