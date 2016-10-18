#Understand the current amount of money in an account

require_relative 'bank_history'

class Bank

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def withdraw(amount)
    @balance -= amount
  end

  def deposit(amount)
    @balance += amount
  end

  # Could make a private method "dedeuct" which subtracts the right amount from the bank

end
