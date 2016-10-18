require 'credit'

describe Credit do

  subject(:credit) {described_class.new(1000)}

  it "should initialize with amount and date" do
    expect(credit.transaction).to eq("18/10/2016 || 1000")
  end

end
