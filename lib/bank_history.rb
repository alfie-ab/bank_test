#Understand how to keep a log of every transaction

require_relative 'credit'
require_relative 'debit'

class BankHistory

  attr_reader :transaction_history, :credit_class, :debit_class

  def initialize(credit_class = Credit, debit_class = Debit)
    @credit_class = credit_class
    @debit_class = debit_class
    @transaction_history = []
    @current_transaction = nil
  end

  def deposit(amount, balance)
    @current_transaction = @credit_class.new(amount, balance)
    @transaction_history << @current_transaction
    @current_transaction = nil
  end

  def withdraw(amount, balance)
    @current_transaction = @debit_class.new(amount, balance)
    @transaction_history << @current_transaction
    @current_transaction = nil
  end

end
