class BankAccount
  def initialize
    @balance = 0
    @overdraft_count = 0
  end

  def validate(number)
    unless number.is_a?(Numeric)
      raise ArgumentError.new("#{number} is not numeric. Must provide a number")
    end
  end

  def deposit(amount)
    validate(amount)
    @balance += amount
    puts "You just added $#{amount} to your account. Current balance: $#{@balance}"
  end

  def balance
    puts "Your account balance is $#{@balance}."
    if @overdraft_count > 3
      puts "You have been charged #{(@overdraft_count - 3) * 35} in overdraft fees (#{@overdraft_count} total overdraft attempts)"
    end
  end

  def withdraw(amount)
    validate(amount)
    if @balance - amount < 0
      @overdraft_count += 1
      if @overdraft_count > 3
        @balance -= 35
      end
    end
  end

end
