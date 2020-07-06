def say_hello_bye(name, flag)
  if flag == 1
    "Hello #{name.capitalize}"
  elsif flag == 0
    "Bye #{name.capitalize}"
  end
end
