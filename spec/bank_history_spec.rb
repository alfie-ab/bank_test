require 'bank_history'

describe BankHistory do

  let(:transaction_class) {double(:transaction_class, new: transaction)}
  let(:transaction) {double(:transaction)}

  subject(:bankhistory) {described_class.new(transaction_class)}

  it "should be able to create a new instance of transaction" do
    bankhistory.create(1000)
    expect(bankhistory.instance_variable_get(:@current_transaction)).not_to be_nil
  end

  it "should keep a log what transations have occured" do
    bankhistory.create(1000)
    expect(bankhistory.instance_variable_get(:@transaction_history)).not_to be_nil
  end

end
