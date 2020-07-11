require "rspec/autorun"
require_relative "../lib/broken_bridge_solution.rb"

describe "is_safe_bridge()" do
  test_cases = [["######", true], ["### #### ####", false], ["#", true], ["# #", false], ["##### #", false]]

  test_cases.each do |test_case|
    it "Returns \"#{test_case[1]}\" for #{test_case[0]}" do
      expect(is_safe_bridge(test_case[0])).to eq(test_case[1])
    end
  end
end
