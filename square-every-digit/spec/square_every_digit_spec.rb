require 'rspec/autorun'
require_relative '../lib/square_every_digit_solution.rb'

describe 'square_digits()' do
   test_cases = [
	[9119, 811181],
	[8726, 6449436],
	[9763, 8149369],
	[2230, 4490],
	[2797, 4498149],
	[233, 499],
	[7437, 4916949],
	[2483, 416649],
	[5742, 2549164],
	[5636, 2536936],
	[841, 64161] ]

	test_cases.each do |test_case|
		it "Squares every digit in #{test_case[0]} and returns the result as an integer: #{test_case[1]}" do
			expect(square_digits(test_case[0])).to eq(test_case[1])
		end
	end

end