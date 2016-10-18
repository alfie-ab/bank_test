require 'bank'

describe Bank do

  let(:bankhistory_class) {double :bankhistory_class, new: bankhistory}
  let(:bankhistory) {double :bankhistory, deposit: nil, withdraw: nil}

  subject(:bank) {described_class.new(bankhistory)}

  it "allows user to check balance" do
    expect(bank.balance).to eq(0)
  end

  it "creates a bank history when intiated" do
    expect(bank.log).to eq(bankhistory)
  end

  it "allows user to make a withdrawal" do
   subject.withdraw(1000)
   expect(subject.balance).to eq(-1000)
 end

 it "allows user to make a deposit" do
   subject.deposit(1000)
   expect(subject.balance).to eq(1000)
 end

 xit "shows user a printed bank statement" do
   subject.deposit(1000)
   subject.withdraw(1000)
   expect(subject.print_balance).to eq("date       || credit || debit || balance")
 end

end
