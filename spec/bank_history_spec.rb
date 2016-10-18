require 'bank_history'

describe BankHistory do

  let(:credit_class) {double(:credit_class, new: credit)}
  let(:debit_class) {double(:debit_class, new: debit)}
  let(:credit) {double(:credit)}
  let(:debit) {double(:debit)}

  subject(:bankhistory) {described_class.new(credit_class, debit_class)}

  it "should add the current transaction to transaction history" do
    bankhistory.deposit(1000, 1000)
    expect(bankhistory.transaction_history).to eq([credit])
  end

  it "should add the current transaction to transaction history" do
    bankhistory.withdraw(1000, 1000)
    expect(bankhistory.transaction_history).to eq([debit])
  end

  it "current transaction should reset after adding itself to transaction history" do
    bankhistory.deposit(1000, 1000)
    expect(bankhistory.instance_variable_get(:@current_transaction)).to eq(nil)
  end


end
