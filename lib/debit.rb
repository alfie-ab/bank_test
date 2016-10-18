#Understand how to subtract money from an account

require 'date'

class Debit

  attr_reader :transaction, :date

  def initialize(amount)
    @transaction = amount
    @date = Time.now.strftime("%d/%m/%Y")
  end

end
