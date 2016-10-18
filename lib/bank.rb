#Understand the current amount of money in an account and prints statement

require_relative 'bank_history'

class Bank

  def initialize(log = BankHistory.new)
    @balance = 0
    @log = log
  end

  def deposit(amount)
    @balance += amount
    @log.deposit(amount, @balance)
  end

  def withdraw(amount)
    @balance -= amount
    @log.withdraw(amount, @balance)
  end

  def print_balance
    puts "date       || credit || debit || balance"
    @log.transaction_history.each {|a| puts a.transaction}
  end

end
