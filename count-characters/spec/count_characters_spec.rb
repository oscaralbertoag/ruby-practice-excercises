require "rspec/autorun"
require_relative "../lib/count_characters_solution.rb"

describe "count_occurrences" do
  CHARACTER_INDEX = 0
  WORD_INDEX = 1
  EXPECTED_RESULT_INDEX = 2

  test_cases = [["s", "sssssssssssssssssssssssss", 25],
                ["7", "10795426697", 2],
                ["a", "Adam and Eve bit the apple and found a snake", 6],
                ["x", "abcdefghi", 0],
                ["f", "frank and his friends have offered five foxes for sale", 7],
                ["c", "Chamber of secrets", 1]]

  test_cases.each do |test_case|
    it "Counts the total number of occurrences of #{test_case[CHARACTER_INDEX]} in #{test_case[WORD_INDEX]}" do
      expect(count_occurrences(test_case[CHARACTER_INDEX], test_case[WORD_INDEX])).to eq(test_case[EXPECTED_RESULT_INDEX])
    end
  end
end
