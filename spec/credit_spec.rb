require 'credit'

describe Credit do

  subject(:credit) {described_class.new(1000)}

  it "should initialize with amount" do
    expect(credit.transaction).to eq(1000)
  end

  it "should record the date the deposit was made" do
    expect(credit.date).to eq("18/10/2016")
  end

end
