require "rspec/autorun"
require_relative "../lib/farm_solution.rb"

describe "count_animal_legs" do
  CHICKEN_INDEX = 0
  COW_INDEX = 1
  PIG_INDEX = 2
  EXPECTED_RESULT_INDEX = 3

  test_cases = [[1, 1, 1, 10], [5, 2, 8, 50], [3, 4, 7, 50], [1, 2, 3, 22], [3, 5, 2, 34], [0, 0, 0, 0], [1, 0, 0, 2], [0, 1, 0, 4], [0, 0, 1, 4], [2, 3, 5, 36]]

  test_cases.each do |test_case|
    it "Counts the total number of legs for #{test_case[CHICKEN_INDEX]} chickens, #{test_case[COW_INDEX]} cows, and #{test_case[PIG_INDEX]} pigs" do
      expect(count_animal_legs(test_case[CHICKEN_INDEX], test_case[COW_INDEX], test_case[PIG_INDEX])).to eq(test_case[EXPECTED_RESULT_INDEX])
    end
  end
end
