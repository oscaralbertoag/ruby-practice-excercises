def transform(numbers)
  transformed = []
  numbers.each do |n|
    if n.even?
      transformed << (n - 1)
    elsif n.odd?
      transformed << (n + 1)
    end
  end
  transformed
end
