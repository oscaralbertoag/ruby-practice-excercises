require "rspec/autorun"
require_relative "../lib/chatroom_status_solution.rb"

describe "chatroom_status()" do
  test_cases = [[[], "no one online"],
                [["becky325"], "becky325 online"],
                [["becky325", "malcolm888"], "becky325 and malcolm888 online"],
                [["becky325", "malcolm888", "fah32fa"], "becky325, malcolm888 and 1 more online"],
                [["paRIE_to"], "paRIE_to online"],
                [["s234f", "mailbox2"], "s234f and mailbox2 online"],
                [["pap_ier44", "townieBOY", "panda321", "motor_bike5", "sandwichmaker833", "violinist91"], "pap_ier44, townieBOY and 4 more online"]]

  test_cases.each do |test_case|
    it "Returns \"#{test_case[1]}\" for users: #{test_case[0]}" do
      expect(chatroom_status(test_case[0])).to eq(test_case[1])
    end
  end
end
