require "rspec/autorun"
require_relative "../lib/true_ones_false_zeros.rb"

describe "integer_boolean()" do
  use_cases = [["100101", [true, false, false, true, false, true]],
               ["10", [true, false]],
               ["001", [false, false, true]],
               ["", []],
               ["111", [true, true, true]],
               ["000", [false, false, false]],
               ["10010110", [true, false, false, true, false, true, true, false]]]

  use_cases.each do |use_case|
    it "\"#{use_case[0]}\" is transformed into array:#{use_case[1]}" do
      expect(integer_boolean(use_case[0])).to eq(use_case[1])
    end
  end
end
