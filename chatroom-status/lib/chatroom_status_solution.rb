def chatroom_status(users)
  return 'no one online' unless users != []
    if users.size == 1
      return "#{users[0]} online"
    elsif users.size == 2
      return "#{users[0]} and #{users[1]} online"
    elsif users.size > 2
      return "#{users[0]}, #{users[1]} and #{users.size - 2} more online"
    end
end
