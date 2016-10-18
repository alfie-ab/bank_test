class Bank

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def withdraw(amount)
    @balance -= amount
  end

  # Could make a private method "dedeuct" which subtracts the right amount from the bank

end
