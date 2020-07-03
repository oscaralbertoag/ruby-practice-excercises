require "rspec/autorun"
require_relative "../lib/odd_up_even_down_solution.rb"

describe "transform()" do
  test_cases = [[[1, 2, 3, 4, 5], [2, 1, 4, 3, 6]],
                [[3, 3, 4, 3], [4, 4, 3, 4]],
                [[2, 2, 0, 8, 10], [1, 1, -1, 7, 9]],
                [[9, 13, 15, 5, 2, 11], [10, 14, 16, 6, 1, 12]]]

  test_cases.each do |test_case|
    it "Array #{test_case[0]} is transformed into #{test_case[1]}" do
      expect(transform(test_case[0])).to eq(test_case[1])
    end
  end
end
