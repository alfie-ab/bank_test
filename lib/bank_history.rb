class BankHistory

  def initialize(transaction_class = Transaction)
    @transaction_class = transaction_class
    @transaction_history = []
    @current_transaction = nil
  end

  def create(amount)
    @current_transaction = @transaction_class.new(amount)
  end

end
