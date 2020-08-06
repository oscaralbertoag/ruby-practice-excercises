require 'rspec/autorun'
require_relative '../lib/what_type_of_triangle_solution.rb'

describe 'get_triangle_type()' do
   test_cases = [
	[[2, 3, 4], "scalene"],
	[[4, 4, 7], "isosceles"],
	[[8, 8, 8], "equilateral"],
	[[3, 5, 5, 2], "not a triangle"],
	[[4, 4, 1], "isosceles"],
	[[4, 4, 2], "isosceles"],
	[[3, 1, 3], "isosceles"],
	[[1], "not a triangle"],
	[[4, 4, 3], "isosceles"],
	[[10], "not a triangle"],
	[[4, 1, 4], "isosceles"],
	[[3, 3, 3], "equilateral"],
	[[2, 3, 4], "scalene"],
	[[1, 5, 5], "isosceles"],
	[[5, 7, 4], "scalene"],
	[[3, 3, 2], "isosceles"],
	[[2, 1, 2], "isosceles"],
	[[9, 7, 9, 5, 3], "not a triangle"],
	[[4, 4, 1], "isosceles"],
	[[10, 8, 3, 2], "not a triangle"],
	[[4], "not a triangle"],
	[[4, 6, 9], "scalene"],
	[[4, 2, 5], "scalene"],
	[[6, 7], "not a triangle"],
	[[3, 2, 3], "isosceles"],
	[[2, 4, 4], "isosceles"],
	[[3, 3, 1], "isosceles"],
	[[12, 7, 6], "scalene"],
	[[6, 2, 6], "isosceles"],
	[[1, 2, 2], "isosceles"],
	[[1, 4, 4], "isosceles"],
	[[4, 4, 2], "isosceles"],
	[[3, 3, 2], "isosceles"],
	[[3, 3, 3], "equilateral"],
	[[9, 9, 3], "isosceles"],
	[[3, 3, 1], "isosceles"],
	[[4, 4, 4], "equilateral"],
	[[4, 3, 3], "isosceles"],
	[[3, 4, 4], "isosceles"],
	[[1, 4, 4], "isosceles"],
	[[4, 7, 9], "scalene"],
	[[1, 9, 9], "isosceles"],
	[[2, 2, 2], "equilateral"],
	[[100, 2, 100], "isosceles"] ]


	test_cases.each do |test_case|
		it "Identifies triangle #{test_case[0]} as #{test_case[1]}" do
			expect(get_triangle_type(test_case[0])).to eq(test_case[1])
		end
	end
end