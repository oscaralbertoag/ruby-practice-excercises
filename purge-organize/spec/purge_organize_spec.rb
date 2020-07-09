require "rspec/autorun"
require_relative "../lib/purge_organize.rb"

describe "unique_sort()" do
  use_cases = [[[1, 5, 8, 2, 3, 4, 4, 4, 10], [1, 2, 3, 4, 5, 8, 10]],
               [[1, 2, 5, 4, 7, 7, 7], [1, 2, 4, 5, 7]],
               [[7, 6, 5, 4, 3, 2, 1, 0, 1], [0, 1, 2, 3, 4, 5, 6, 7]],
               [[3, 6, 5, 4, 3, 27, 1, 100, 1], [1, 3, 4, 5, 6, 27, 100]],
               [[-9, -3.1414, -87, 8, -4.323827, -3.1415, -3.1415], [-87, -9, -4.323827, -3.1415, -3.1414, 8]]]

  use_cases.each do |use_case|
    it "Original Array:#{use_case[0]} is transformed into:#{use_case[1]}" do
      expect(unique_sort(use_case[0])).to eq(use_case[1])
    end
  end
end
