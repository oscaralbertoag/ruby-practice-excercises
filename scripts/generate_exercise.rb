require_relative "./script_utils.rb"

# :::::::::::::::::::::::::::::::::: SCRIPT ::::::::::::::::::::::::::::::::::

directory_name = ARGV[0]
function_name = ARGV[1]

spec_filename = generate_spec_filename(directory_name)
lib_filename = generate_lib_filename(directory_name)

base_directory_path = "../#{directory_name}"
spec_directory_path = "#{base_directory_path}/spec"
lib_directory_path = "#{base_directory_path}/lib"

Dir.mkdir(base_directory_path)
Dir.mkdir(spec_directory_path)
Dir.mkdir(lib_directory_path)

# Generate spec file
spec_template_file = File.open("./templates/spec.txt")
spec_content = spec_template_file.read
spec_template_file.close
File.open("#{spec_directory_path}/#{spec_filename}", "w") { |f| f.write eval("\"#{spec_content}\"") }

# Generate lib file
function_template_file = File.open("./templates/function.txt")
function_content = function_template_file.read
function_template_file.close
File.open("#{lib_directory_path}/#{lib_filename}", "w") { |f| f.write eval("\"#{function_content}\"") }

# Generate markdown file
markdown_template_file = File.open("./templates/problem-description.txt")
markdown_content = markdown_template_file.read
markdown_template_file.close
File.open("#{base_directory_path}/#{directory_name}.md", "w") { |f| f.write eval("\"#{markdown_content}\"") }
