require "rspec/autorun"
require_relative "../lib/hello_bye_solution.rb"

describe "say_hello_bye()" do
  test_cases = [["Beyonce", 1, "Hello Beyonce"],
                ["Beyonce", 0, "Bye Beyonce"],
                ["beyonce", 1, "Hello Beyonce"],
                ["beyonce", 0, "Bye Beyonce"]]

  test_cases.each do |test_case|
    it "Responds to \"#{test_case[0]}\", \"#{test_case[1]}\" with \"#{test_case[2]}\"" do
      expect(say_hello_bye(test_case[0], test_case[1])).to eq(test_case[2])
    end
  end
end
