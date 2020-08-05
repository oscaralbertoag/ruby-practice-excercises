require 'rspec/autorun'
require_relative '../lib/add_up_to_solution.rb'

describe 'add_up()' do
   test_cases = [[4, 10], [13, 91], [600, 180300], [392, 77028], [53, 1431], [897, 402753], [23, 276], [1000, 500500], [738, 272691], [100, 5050], [925, 428275], [1,1], [999, 499500], [175, 15400], [111, 6216] ]


   test_cases.each do |test_case|
      it "Adds up all numbers up to #{test_case[0]} and it should return #{test_case[1]}" do
          expect(add_up(test_case[0])).to eq(test_case[1])
     end
   end 
end