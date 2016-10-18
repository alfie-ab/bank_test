require 'credit'

describe Credit do

  subject(:credit) {described_class.new(0)}

  it "should start with nothing" do
    expect(credit.transaction).to eq(0)
  end

end
