require './gilded_rose.rb'
require "rspec"

describe GildedRose do

  let(:rose) { GildedRose.new }

  it "lowers the quantity of an item" do
    rose.update_quality
    expect(rose.items.first.sell_in).to eq 9
  end

  it "lowers the quality of at item" do
    rose.update_quality
    expect(rose.items.first.quality).to eq 19
  end

  it "never returns a negative number for quality" do
    10.times do
      rose.update_quality
    end
    expect(rose.items.last.quality).to eq 0
  end

  it "increases the quality of aged brie" do
    rose.update_quality
    expect(rose.items[1].quality).to eq 1
  end

  it "does not return a quality of more than 50" do
   500.times do
     rose.update_quality
   end
   expect(rose.items[1].quality).to eq 50
  end

  it "increases the quality of backstage passes as its sell in date approaches" do
    rose.update_quality
    expect(rose.items[4].quality).to eq 21
  end

  it "decreases the quantity of backstage passes to 0 after the sell in day" do
    50.times do
      rose.update_quality
    end
    expect(rose.items[4].quality).to eq 0
  end

  it "increases the quality of backsatge passes by two when there are 10 days are less" do
    6.times do
      rose.update_quality
    end
    expect(rose.items[4].sell_in).to eq 9
    expect(rose.items[4].quality).to eq 27
  end

  it "increase the quality of backstage passes by 3 when there are 5 days or less" do
    11.times do
      rose.update_quality
    end
    expect(rose.items[4].sell_in).to eq 4
    expect(rose.items[4].quality).to eq 38
  end

  it "decreases the quality twice as fast after the sell in date has past" do
    11.times do
      rose.update_quality
    end
    expect(rose.items.first.sell_in).to eq -1
    expect(rose.items.first.quality).to eq 8
  end

  it "doesn't change the sell in and quality of sulfuras" do
    50.times do
      rose.update_quality
    end
    expect(rose.items[3].sell_in).to eq 0
    expect(rose.items[3].quality).to eq 80
  end

  it "degrades conjured items twice as fast as regular items" do
    rose.update_quality
    expect(rose.items.last.quality).to eq 4
  end
end
