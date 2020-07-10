require "rspec/autorun"
require_relative "../lib/strictly_increasing_decreasing_solution.rb"

describe "check()" do
  test_cases = [[[1, 2, 3], "increasing"],
                [[3, 2, 1], "decreasing"],
                [[1, 2, 1], "neither"],
                [[1, 1, 2], "neither"],
                [[1, 3, 5, 7, 9, 10], "increasing"],
                [[5, 6, 5, 7, 9, 10], "neither"],
                [[5, 7], "increasing"],
                [[9, 7, 1], "decreasing"],
                [[1], "neither"],
                [[], "neither"]]

  test_cases.each do |test_case|
    it "Returns \"#{test_case[1]}\" for #{test_case[0]}" do
      expect(check(test_case[0])).to eq(test_case[1])
    end
  end

  describe "check_ascending()" do
    test_cases_ascending = [[[1, 2, 3], true],
                            [[3, 2, 1], false],
                            [[1, 2, 1], false],
                            [[1, 1, 2], false],
                            [[1, 3, 5, 7, 9, 10], true],
                            [[5, 6, 5, 7, 9, 10], false],
                            [[5, 7], true],
                            [[9, 7, 1], false]]

    test_cases_ascending.each do |test_case|
      it "Returns \"#{test_case[1]}\" for #{test_case[0]}" do
        expect(check_ascending(test_case[0])).to eq(test_case[1])
      end
    end
  end

  describe "check_descending()" do
    test_cases_descending = [[[1, 2, 3], false],
                             [[3, 2, 1], true],
                             [[1, 2, 1], false],
                             [[1, 1, 2], false],
                             [[1, 3, 5, 7, 9, 10], false],
                             [[5, 6, 5, 7, 9, 10], false],
                             [[5, 7], false],
                             [[9, 7, 1], true]]

    test_cases_descending.each do |test_case|
      it "Returns \"#{test_case[1]}\" for #{test_case[0]}" do
        expect(check_descending(test_case[0])).to eq(test_case[1])
      end
    end
  end
end
