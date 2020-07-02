require "rspec/autorun"
require_relative "../lib/equal_numbers_solution.rb"

describe "numbers_are_equal" do
  FIRST_WORD_INDEX = 0
  SECOND_WORD_INDEX = 1
  EXPECTED_RESULT_INDEX = 2

  test_cases = [[1, 1, true],
                [1, 2, false],
                [-10, -10, true],
                [-10, 10, false],
                [123.456, 123.456, true],
                [-1.5, -1.5, true],
                [-1.5, 1.5, false],
                [0, 0.0, true],
                [1, "1", true],
                ["1", 1, true],
                ["1", "1", true],
                ["1.5", 1.5, true],
                ["1.5", "1.5", true],
                ["-1.5", "-1.5", true],
                [1, "2", false],
                ["1", 2, false],
                ["1", "2", false],
                ["-1.5", 1.5, false]]

  test_cases.each do |test_case|
    it "Returns #{test_case[EXPECTED_RESULT_INDEX]} for #{test_case[FIRST_WORD_INDEX]} and #{test_case[SECOND_WORD_INDEX]}" do
      expect(numbers_are_equal(test_case[FIRST_WORD_INDEX], test_case[SECOND_WORD_INDEX])).to eq(test_case[EXPECTED_RESULT_INDEX])
    end
  end
end
