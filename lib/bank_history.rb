class BankHistory

  def initialize(transaction_class = Transaction)
    @transaction_class = transaction_class
    @transaction_history = []
    @current_transaction = nil
  end

  #Need to refactor create so that it only does one thing, also need to reset current transaction

  def create(amount)
    @current_transaction = @transaction_class.new(amount)
    @transaction_history << @current_transaction
  end

end
