#Understand how to subtract money from an account

require 'date'

class Debit

  attr_reader :transaction

  def initialize(amount)
    @transaction = Time.now.strftime("%d/%m/%Y") + " ||     " + "  || " + amount.to_s
  end

end
