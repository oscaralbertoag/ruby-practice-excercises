require 'rspec/autorun'
require_relative '../lib/instant_jazz_solution.rb'

describe 'jazzify()' do
   test_cases = [ [['G', 'F', 'C'], ['G7', 'F7', 'C7']], 
                                  [['Dm', 'G', 'E', 'A'], ['Dm7', 'G7', 'E7', 'A7']],
                                  [['F7', 'E7', 'A7', 'Ab7', 'Gm7', 'C7'], ['F7', 'E7', 'A7', 'Ab7', 'Gm7', 'C7']],
                                  [['G', 'C7'], ['G7', 'C7']],
                                  [[], []] ]

   test_cases.each do |test_case|
      it "Adds a 7 to jazzify the chord, and leaves  it alone if it already has a 7. Expected: #{test_case[1]}" do
         expect(jazzify(test_case[0])).to eq(test_case[1])
      end
   end

end