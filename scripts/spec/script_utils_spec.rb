require "rspec/autorun"
require_relative "../script_utils.rb"

describe "generate_spec_filename()" do
  it "Generates the correct Rspec file name from a directory name (multiple words)" do
    expect(generate_spec_filename("problem-something")).to eq("problem_something_spec.rb")
  end
  it "Generates the correct Rspec file name from a directory name (single word)" do
    expect(generate_spec_filename("problem")).to eq("problem_spec.rb")
  end
end

describe "generate_lib_filename()" do
  it "Generates the correct solution file name from a directory name (multiple words)" do
    expect(generate_lib_filename("problem-something")).to eq("problem_something_solution.rb")
  end
  it "Generates the correct solution file name from a directory name (single word)" do
    expect(generate_lib_filename("problem")).to eq("problem_solution.rb")
  end
end
