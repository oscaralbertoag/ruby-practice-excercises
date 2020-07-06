def say_hello_bye(name, flag)
  if flag == 1
    "Hello #{name.capitalize}"
  elsif flag.zero?
    "Bye #{name.capitalize}"
  end
end
