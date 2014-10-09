require 'spec_helper'
 
describe Mice do
  let (:test_mice) {Mice.new(12, 10, 1)}

  it "has twelve mice" do 
    expect(test_mice.number_of_mice).to eq 12
  end

  it "eats 10 pieces of grain per day" do 
    expect(test_mice.pieces_of_grain_per_day).to eq 10
  end

  it "reproduce 1 mouse per day" do 
    expect(test_mice.number_reporduced_per_day).to eq 1
  end
end
