#Understand how to subtract money from an account

class Debit

  attr_reader :transaction

  def initialize(amount)
    @transaction = amount
  end

end
