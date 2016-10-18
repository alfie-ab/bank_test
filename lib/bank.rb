#Understand the current amount of money in an account

require_relative 'bank_history'

class Bank

  attr_reader :balance, :log

  def initialize(log = BankHistory.new)
    @balance = 0
    @log = log
  end

  def deposit(amount)
    @log.deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @log.withdraw(amount)
    @balance -= amount
  end

  def print
    puts "date       || credit || debit || balance"
    puts @log.transaction_history.pop.transaction + "  || " + @balance.to_s
  end

  # Could make a private method "dedeuct" which subtracts the right amount from the bank

end
