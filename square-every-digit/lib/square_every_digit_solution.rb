def square_digits(number)
  nums = number.to_s.split('').map {|n| n.to_i}
  nums.map { |n| n ** 2 }.join.to_i
    # Your code here
end
