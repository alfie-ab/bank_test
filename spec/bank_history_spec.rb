require 'bank_history'

describe BankHistory do

  let(:credit_class) {double(:credit_class, new: credit)}
  let(:debit_class) {double(:debit_class, new: debit)}
  let(:credit) {double(:credit)}
  let(:debit) {double(:debit)}

  subject(:bankhistory1) {described_class.new(credit_class)}
  subject(:bankhistory2) {described_class.new(debit_class)}

  it "should be able to create a new instance of credit" do
    bankhistory1.deposit(1000)
    expect(bankhistory1.instance_variable_get(:@current_transaction)).not_to be_nil
  end


  it "should be able to create a new instance of debit" do
    bankhistory2.withdraw(1000)
    expect(bankhistory2.instance_variable_get(:@current_transaction)).not_to be_nil
  end


end
