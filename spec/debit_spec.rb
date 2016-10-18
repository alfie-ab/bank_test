require 'debit'

describe Debit do

  subject(:debit) {described_class.new(1000, 1000)}

  it "should initialize with amount, date and balance" do
    expect(debit.transaction).to eq("18/10/2016 ||       || 1000 || 1000")
  end

end
