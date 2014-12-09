require './item.rb'

class GildedRose
  attr_accessor :items

  @items = []

  def initialize
    @items = []
    @items << Item.new("+5 Dexterity Vest", 10, 20)
    @items << Item.new("Aged Brie", 2, 0)
    @items << Item.new("Elixir of the Mongoose", 5, 7)
    @items << Item.new("Sulfuras, Hand of Ragnaros", 0, 80)
    @items << Item.new("Backstage passes to a TAFKAL80ETC concert", 15, 20)
    @items << Item.new("Conjured Mana Cake", 3, 6)
  end

  def update_quality
    for i in 0..(@items.size-1)
      if (@items[i].name != "#{brie}" && @items[i].name != "#{passes}")
        if quality_is_greater_than_zero(i)
          if (@items[i].name != "#{sulfuras}")
            reduce_quality(i)
            if (@items[i].name == "#{cake}")
              reduce_quality(i)
            end
          end
        end
      else
        increase_quality(i)
        if (@items[i].name == "#{passes}")
          check_sell_in(i, 11)
          check_sell_in(i, 6)
        end
      end
      if (@items[i].name != "#{sulfuras}")
        @items[i].sell_in = @items[i].sell_in - 1;
      end
      if (@items[i].sell_in < 0)
        if (@items[i].name != "#{brie}")
          if (@items[i].name != "#{passes}")
            if quality_is_greater_than_zero(i)
              if (@items[i].name != "#{sulfuras}")
                reduce_quality(i)
              end
            end
          else
            @items[i].quality = @items[i].quality - @items[i].quality
          end
        else
          increase_quality(i)
        end
      end
    end
  end

  def sulfuras?

  end

  def check_sell_in(i, number)
    if (@items[i].sell_in < number)
      increase_quality(i)
    end
  end

  def reduce_quality(i)
    @items[i].quality = @items[i].quality - 1
  end

  def cake
    "Conjured Mana Cake"
  end

  def brie
    "Aged Brie"
  end

  def passes
    "Backstage passes to a TAFKAL80ETC concert"
  end

  def sulfuras
    "Sulfuras, Hand of Ragnaros"
  end

  def increase_quality(i)
    if (@items[i].quality < 50)
      @items[i].quality = @items[i].quality + 1
    end
  end

  def quality_is_greater_than_zero(i)
    (@items[i].quality > 0)
  end
end
