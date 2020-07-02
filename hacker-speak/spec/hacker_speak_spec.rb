require "rspec/autorun"
require_relative "../lib/hacker_speak_solution.rb"

describe "hacker_speak_solution" do
  WORD_INDEX = 0
  EXPECTED_RESULT_INDEX = 1

  test_cases = [["javascript is cool", "j4v45cr1pt 15 c00l"],
                ["programming is fun", "pr0gr4mm1ng 15 fun"],
                ["become a coder", "b3c0m3 4 c0d3r"],
                ["hi there", "h1 th3r3"],
                ["keep on practicing", "k33p 0n pr4ct1c1ng"],
                ["never give up", "n3v3r g1v3 up"],
                ["jAvAScript Is cOol", "j4v45cr1pt 15 c00l"],
                ["PROGRAMMING IS FUN", "PR0GR4MM1NG 15 FUN"],
                ["1234", "1234"],
                ["up", "up"]]

  test_cases.each do |test_case|
    it "Returns '#{test_case[EXPECTED_RESULT_INDEX]}' for '#{test_case[WORD_INDEX]}'" do
      expect(hacker_speak(test_case[WORD_INDEX])).to eq(test_case[EXPECTED_RESULT_INDEX])
    end
  end
end
