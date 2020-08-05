require 'rspec/autorun'
require_relative '../lib/multiply_numbers_in_string_solution.rb'

describe 'multiply_nums()' do
   test_cases = [
	["2, 3", 6],
	["1, 2, 3, 4", 24],
	["54, 75, 453, 0", 0],
	["10, -2", -20],
	["-26, 1, -27, -12, -19", 160056],
	["16, 8", 128],
	["-27, -14, -28, 13, -17", 2339064],
	["-19, -22, -14, 20, -15, -24, -17, 19, 30, -10", -4082823360000],
	["1, 13, 0, -11, 26, -17, 21", 0],
	["-25, -19, 7, -26, -26", 2247700],
	["-4, -16, -22, -3, -6", -25344],
	["-22, 11, 19, 5, 19, -9, -13, 20, -29", 29641926600],
	["-25, 22", -550],
	["26, -19, 17, 26, -21", 4585308],
	["5, -1, 1, -28, 14, 28, 1", 54880],
	["-27, -9, 6, -25, 4", -145800],
	["-24, -13, -14, 30, 9, -14", 16511040],
	["27, 25, 27, -18, -27, -7, 28, 27, 0", 0],
	["-23, 11, -18, -5, -4", 91080],
	["-16, -10, -29, -23, -30, -1", 3201600],
	["-14, -17, 9, -2, -17, -10, -30", 21848400],
	["-13, -23, 10, 0, -23", 0],
	["0", 0],
	["30", 30],
	["-24, -21, 6, -29, 23, 11, -21, -29", -13511936592],
	["4, 23, 10", 920],
	["-13, -2, 28, 10, 25", 182000],
	["-18, -6, -9, 7, -1, -4, 5, -2, 19", 5171040],
	["-24, 15, -19, 20, -14, -8, 6, -22, 17", -34381670400],
	["12, -12, -3, -12, 10, 16, -23, -5, 17", -1621555200],
	["17", 17],
	["9, -27, 9, -22, 24, -1", -1154736],
	["16, -26, -1, -25, 13, 6, 26, 2, 4", -168729600],
	["-13, 17, 29, 19, 7", -852397],
	["28, 15, -7, -25", 73500],
	["-8, 19, -11, -10, -3, -9, 30, 18", -243777600],
	["22, -13, 29, 3, -29", 721578],
	["18, -18, -8, -16", -41472],
	["-12, -28, -19, 14, 27, 14, -3, 10, 13, 1", 13175809920],
	["-26, -21, 27, 23, -22, 1", -7459452],
	["5, -21, -26, -29, -8, 21, -5, -30, 1", 1995084000],
	["-9, -7, -13, -15, -2", -24570],
	["9, 25, 1, 28, 3, -3, -16, -26, 12, -26", 7359206400],
	["-2, 4, -29", 232],
	["26, 13, 17, -16, 6", -551616],
	["-17", -17],
	["26, -15, -12, 2, -1, 4, 20, 14, 25, 3", -786240000],
	["8, -11", -88],
	["12, -2, 8, 6, -23, 9, 13, 14", 43400448],
	["-10, 19, -29, 3, 30, 20, -5", -49590000],
	["19", 19],
	["15, -28, 8, 7, -20, 24, 2", 22579200],
	["25, -24, 4, 9, -17, 4, -24, -18, -3", -1903564800],
	["8, -14, -30, 9, -14, 17, -14", 100759680] ]



	test_cases.each do |test_case|
              it "Splits a string (#{test_case[0]}), multiplies all the numbers, and returns #{test_case[1]}" do
                   expect(multiply_nums(test_case[0])).to eq(test_case[1])
              end

        end








end