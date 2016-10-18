require 'debit'

describe Debit do

  subject(:debit) {described_class.new(0)}

  it "should start with nothing" do
    expect(debit.transaction).to eq(0)
  end

end
