class Bottles
  def song
    verses(99, 0)
  end

  def verses(upper_bound, lower_bound)
    upper_bound.downto(lower_bound).map {|i| verse(i)}.join("\n")
  end

  def verse(i)
    number = BottleNumber.new(i)
    next_number = BottleNumber.new(number.number + 1)
    "#{number.intro} #{next_number.container} of beer on the wall, " + 
    "#{number.intro.downcase} #{next_number.container} of beer.\n" + 
    "#{number.outro}, #{number.name_of} #{number.container} of beer on the wall.\n"
  end
end

#1. Copy the private methods into their own class.  Don't worry the name; it will reveal its self.
#2.  The other steps are in the repo commits

class BottleNumber
  attr_reader :number 

  def initialize(number)
    @number = number
  end

  def intro 
    if number == 0
      "No more"
    else
      "#{number}"
    end
  end

  def container
    if number == 2
      "bottle"
    else
      "bottles"
    end
  end

  def outro
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def name_of
    if number == 0
      "99"
    elsif number == 1
      "no more"
    else
      (number-1).to_s
    end
  end

  def pronoun
    if number == 1
      "it"
    else
      "one"
    end
  end
end