require_relative 'credit'
require_relative 'debit'

class BankHistory

  def initialize(credit_class = Credit, debit_class = Debit)
    @credit_class = credit_class
    @debit_class = debit_class
    @transaction_history = []
    @current_transaction = nil
  end

  #Need to refactor create so that it only does one thing, also need to reset current transaction

  def deposit(amount)
    @current_transaction = @credit_class.new(amount)
    @transaction_history << @current_transaction
  end

  def withdraw(amount)
    @current_transaction = @debit_class.new(amount)
  end

end
