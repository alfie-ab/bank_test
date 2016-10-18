#Understand how to add money to an account

require 'date'

class Credit

  attr_reader :transaction

  def initialize(amount)
    @transaction = Time.now.strftime("%d/%m/%Y") + " || " + amount.to_s 
  end

end
