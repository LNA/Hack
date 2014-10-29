# Feel free to delete the instructions once you get going
puts instructions(__FILE__)

class Bottles

  def verse(number)
    item = something(number)
    var = number == 1 ? "it" : "one"
    result = number == 1 ? "no more" : number - 1
    item_less = items(number)

    "#{number} #{item} of beer on the wall, #{number} #{item} of beer.\nTake #{var} down and pass it around, #{result} #{item_less} of beer on the wall.\n"
  end

  private

  def something(number)
    number == 1 ? "bottle" : "bottles"
  end

  def items(number)
    if (number - 1) == 1
      item_less = "bottle"
    else
      item_less = "bottles"
    end
    item_less
  end
end
