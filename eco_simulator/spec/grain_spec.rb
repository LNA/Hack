require 'spec_helper'
 
describe Grain do
  it "has 100 peices of grain" do 
    test_grain = Grain.new(100)
    expect(test_grain.pieces_of_grain).to eq 100
  end
end
