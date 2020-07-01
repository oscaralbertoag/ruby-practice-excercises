require "rspec/autorun"
require_relative "../lib/football_points_solution.rb"

describe "calculate_football_points" do
  WINS_INDEX = 0
  DRAWS_INDEX = 1
  LOSSES_INDEX = 2
  EXPECTED_RESULT_INDEX = 3

  test_cases = [[3, 4, 2, 13], [5, 0, 2, 15], [0, 0, 1, 0], [1, 0, 0, 3], [0, 1, 0, 1], [1, 2, 3, 5], [5, 5, 5, 20], [0, 7, 0, 7]]

  test_cases.each do |test_case|
    it "Counts the total number of points for #{test_case[WINS_INDEX]} wins, #{test_case[DRAWS_INDEX]} draws, and #{test_case[LOSSES_INDEX]} losses" do
      expect(calculate_football_points(test_case[WINS_INDEX], test_case[DRAWS_INDEX], test_case[LOSSES_INDEX])).to eq(test_case[EXPECTED_RESULT_INDEX])
    end
  end
end
