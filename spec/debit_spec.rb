require 'debit'

describe Debit do

  subject(:debit) {described_class.new(1000)}

  it "should initialize with amount" do
    expect(debit.transaction).to eq(1000)
  end

end
