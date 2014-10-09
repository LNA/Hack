require 'spec_helper'
 
describe Cats do
  let (:test_cats) {Cats.new(10, 6, 2)}

  it "has ten cats" do 
    expect(test_cats.number_of_cats).to eq 10
  end

  it "eats 6 mice per day" do 
    expect(test_cats.number_of_mice_per_day).to eq 6
  end

  it "reproduces 2 cats per day" do 
    expect(test_cats.number_reporduced_per_day).to eq 2
  end
end
