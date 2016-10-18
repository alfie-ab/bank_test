require 'bank'

describe Bank do

  it "allows user to check balance" do
    expect(subject.balance).to eq(0)
  end

  it "allows user to make a deposit" do
    subject.withdraw(1000)
    expect(subject.balance).to eq(-1000)
  end

end
