def transform(numbers)
  numbers.map { |n| n.odd? ? n + 1 : n - 1 }
end
