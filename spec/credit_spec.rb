require 'credit'

describe Credit do

  it "should start with nothing" do
    expect(subject.transaction).to eq(0)
  end

end
