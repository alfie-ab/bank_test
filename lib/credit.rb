#Understand how to add money to an account

require 'date'

class Credit

  attr_reader :transaction, :date

  def initialize(amount)
    @transaction = amount
    @date = Time.now.strftime("%d/%m/%Y")
  end

end
