def chatroom_status(users)
  return 'no one online' unless users != []
  case users.size
  when 1
    "#{users[0]} online"
  when 2
    "#{users[0]} and #{users[1]} online"
  else
    "#{users[0]}, #{users[1]} and #{users.size - 2} more online"
  end
end
