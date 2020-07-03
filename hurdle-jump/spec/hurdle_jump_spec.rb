require "rspec/autorun"
require_relative "../lib/hurdle_jump_solution.rb"

describe "hurdle_jump()" do
  use_cases = [[[1, 2, 3, 4, 5], 5, true],
               [[5, 5, 3, 4, 5], 3, false],
               [[5, 4, 5, 6], 10, true],
               [[1, 2, 1], 1, false],
               [[], 3, true],
               [[], 0, true],
               [[4, 4], 3, false],
               [[3, 3, 3], 4, true],
               [[1, 2, 1], 1, false]]

  use_cases.each do |use_case|
    it "Returns #{use_case[2]} for an athlete of height #{use_case[1]} attempting to jump hurdles: #{use_case[0]}" do
      expect(hurdle_jump(use_case[0], use_case[1])).to eq(use_case[2])
    end
  end
end
