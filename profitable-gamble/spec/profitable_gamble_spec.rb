require "rspec/autorun"
require_relative "../lib/profitable_gamble_solution.rb"

describe "profitable_gamble()" do
  test_cases = [
    [[0.2, 50, 9], true],
    [[0.9, 1, 2], false],
    [[0.9, 3, 2], true],
    [[0.33, 10, 3.30], true],
    [[0, 1000, 0.01], false],
    [[0.1, 1000, 7], true],
    [[0, 0, 0], false],
  ]

  test_cases.each do |test_case|
    it "Returns \"#{test_case[1]}\" for winning probability:#{test_case[0][0]}, prize:#{test_case[0][1]}, pay:#{test_case[0][2]}" do
      expect(profitable_gamble(test_case[0][0], test_case[0][1], test_case[0][2])).to eq(test_case[1])
    end
  end
end
