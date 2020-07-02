require "rspec/autorun"
require_relative "../lib/remove_negatives_solution.rb"

describe "remove_negatives()" do
  it "Returns the same list for input list that contains no negative numbers" do
    expect(remove_negatives([1, 2, 3, 4])).to eq([1, 2, 3, 4])
  end

  it "Returns an empty list for input list that contains only negative numbers" do
    expect(remove_negatives([-1, -2, -3, -4])).to eq([])
  end

  it "Returns a list with only positive numbers for an input list with negative and positive numbers" do
    expect(remove_negatives([1, 2, -2, 3, -4, 4, 5, -5, -5, -5])).to eq([1, 2, 3, 4, 5])
  end

  it "Returns a list with only positive numbers for an input list with negative and positive numbers (floats)" do
    expect(remove_negatives([0, 1, 2.5, -2.5, 3, -4, 4, 5, -5, -5, -5])).to eq([0, 1, 2.5, 3, 4, 5])
  end
end
