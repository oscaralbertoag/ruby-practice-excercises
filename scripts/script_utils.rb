def generate_spec_filename(directory_name)
  directory_name.gsub("-", "_") << "_spec.rb"
end

def generate_lib_filename(directory_name)
  directory_name.gsub("-", "_") << "_solution.rb"
end
