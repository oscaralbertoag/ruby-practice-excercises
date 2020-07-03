require "rspec/autorun"
require_relative "../lib/true_count_solution.rb"

describe "count_true()" do
  test_cases = [[[true, true, true, true, true, true], 6],
                [[], 0],
                [[true, false, true, false, true], 3],
                [[false, false, false, false], 0]]
  INPUT_ARRAY_INDEX = 0
  EXPECTED_RESULT_INDEX = 1

  test_cases.each do |test_case|
    it "Array #{test_case[INPUT_ARRAY_INDEX]} returns a count of #{test_case[EXPECTED_RESULT_INDEX]}" do
      expect(count_true(test_case[INPUT_ARRAY_INDEX])).to eq(test_case[EXPECTED_RESULT_INDEX])
    end
  end
end
