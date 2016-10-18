require 'debit'

describe Debit do

  subject(:debit) {described_class.new(1000)}

  it "should initialize with amount" do
    expect(debit.transaction).to eq(1000)
  end

  it "should record the date the withdrawl was made" do
    expect(debit.date).to eq("18/10/2016")
  end

end
