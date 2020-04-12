# Bank Account
## Requirements
You are going to build a simple bank account class that does the following:
* Shows you your balance
* Allows you to make deposits
* Allows you to make withdrawals
### Step 1: Class & Constructor
Create the `BankAccount` class and its initializer method. This initializer method takes _no_ parameters, and it initializes 2 instance variables:
* `balance` : stores the total balance in your account; initialize this to zero
* `overdraft_count` : stores the number of times you have overdrawn your account; initialize this to zero
### Step 2: Validator
You will create a small method that will be used to validate input provided by the user. It will throw an exception if the input provided is _NOT_ numeric.
* Create the `validate(number)` method, which takes 1 parameter.
* Raise an `ArgumentError` only when the `number` argument is _NOT_ numeric. The error message should be:
`"input_provided is not numeric. Must provide a number"` where `input_provided` is the value of the `number` argument.
### Step 3: Deposit
You will create a method that allows you to add money to your account.
* Create the `deposit(amount)` method, which takes 1 parameter.
* The `amount` parameter should always be numeric. Therefore, you must use the method created in step 2 to validate the input before proceeding.
* Once the `amount` has been validated, add it to the instance variable `balance`
* After adding `amount` to `balance`, print out a message in the following format (using method and instance variables):
`"You just added $30 to your account. Current balance: $50"` where `amount` would be 30 and `balance` 50 in this example.
### Step 4: Balance
You will create a method that allows you to check your balance.
* Create the `balance()` method.
* Print a message in the following format, where 50 is the value of the instance variable `balance`:
`"Your account balance is $50."`
* If the value of `overdraft_count` is greater than 3, print a message in the following format (use instance variables to calculate the numeric values in the message):
`"You have been charged $70 in overdraft fees (5 total overdraft attempts)"`
This bank account only charges $35 _after_ the third time a user has overdrawn its account. For example, if a user has overdrawn its account 3 times, the total amount of fees is $0. If a user overdraws its account a fourth time, a fee of $35 will be charged. If the user overdraws its account again, another fee of $35 will be charged, etc.
### Step 5: Withdraw
You will create a method that allows the user to withdraw money from the account. A user can only withdraw what is available as a balance. If a user overdraws its account, an error will be raised, and depending on which overdraft attempt this is, a penalty fee of $35 will be charged (overdraft fees start after the 3rd overdraft attempt).
* Create the `withdraw(amount)` method.
* Use the method from step 2 to ensure that the value of the argument `amount` is numeric.
* After validation, subtract `amount` from `balance`, and follow this logic:
  * If the result of subtracting `amount` from `balance` produces a negative value, add one to the `overdraft_count`. Also, if this is the fourth or higher overdraw attempt, charge the user an overdraft fee by subtracting $35 from their `balance`
  * raise an error with a message in the following format (use instance and method variables to insert the pertinent numeric values):
  `"Not enough funds in the account. Current balance: $10. Withdraw attempt: $40. A $35 fee will be charged after 3 overdraw attempts (4 total overdraft attempts so far)."`
* Finally, print a message in the following format (use instance and method variables to insert the pertinent numeric values):
`"You widthdrew $40. Remaining balance is $30"`
## Usage
### Create account & deposit
```ruby
my_account = BankAccount.new
my_account.deposit(100)
```
```bash
You just added $100 to your account. Current balance: $100
```
### Check balance (no overdraft fees)
```ruby
my_account.balance
```
```bash
Your account balance is $100.
```
### Check balance (with overdraft fees)
```ruby
my_account.balance
```
```bash
Your account balance is $-70.
You have been charged $70 in overdraft fees (5 total overdraft attempts)
```
### Withdraw money
```ruby
my_account.withdraw(50)
```
```bash
You widthdrew $50. Remaining balance is $0
```
### Overdraft attempt
```ruby
my_account.withdraw(50)
```
```bash
Traceback (most recent call last):
        6: from /usr/bin/irb:23:in `<main>'
        5: from /usr/bin/irb:23:in `load'
        4: from /usr/lib/ruby/gems/2.7.0/gems/irb-1.2.1/exe/irb:11:in `<top (required)>'
        3: from (irb):11
        2: from (irb):12:in `rescue in irb_binding'
        1: from /home/oscar/Programming/Ruby/ruby-practice-excercises/bank-account/bank_account.rb:24:in `withdraw'
RuntimeError (Not enough funds in the account. Current balance: $-70. Withdraw attempt: $50. A $35 fee will be charged after 3 overdraw attempts (5 total overdraft attempts so far).)

```
### Invalid input
```ruby
my_account.deposit("7")
```
```bash
Traceback (most recent call last):
        6: from /usr/bin/irb:23:in `<main>'
        5: from /usr/bin/irb:23:in `load'
        4: from /usr/lib/ruby/gems/2.7.0/gems/irb-1.2.1/exe/irb:11:in `<top (required)>'
        3: from (irb):14
        2: from /home/oscar/Programming/Ruby/ruby-practice-excercises/bank-account/bank_account.rb:12:in `deposit'
        1: from /home/oscar/Programming/Ruby/ruby-practice-excercises/bank-account/bank_account.rb:8:in `validate'
ArgumentError (7 is not numeric. Must provide a number)
```