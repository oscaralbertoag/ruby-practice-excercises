def remove_negatives(numbers)
  positives = []
  numbers.each do |n|
    positives << n if n >= 0
  end
  positives
end
