require 'bank'

describe Bank do

  let(:bankhistory_class) {double :bankhistory_class, new: bankhistory}
  let(:bankhistory) {double :bankhistory}

  subject(:bank) {described_class.new(bankhistory)}

  it "allows user to check balance" do
    expect(bank.balance).to eq(0)
  end

  it "creates a bank history when intiated" do
    expect(bank.log).to eq(bankhistory)
  end

end
