#Understand how to add money to an account

require 'date'

class Credit

  attr_reader :transaction

  def initialize(amount, balance)
    @transaction = Time.now.strftime("%d/%m/%Y") + " || " + amount.to_s + "   ||       || " + balance.to_s
  end

end
