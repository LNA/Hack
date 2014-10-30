class Bottles
  def song
    verses(99, 0)
  end

  def verses(upper_bound, lower_bound)
    upper_bound.downto(lower_bound).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    "#{intro(number)} #{container(number + 1)} of beer on the wall, " + 
    "#{intro(number).downcase} #{container(number + 1)} of beer.\n" + 
    "#{outro(number)}, #{name_of(number)} #{container(number)} of beer on the wall.\n"
  end

  private

  def intro(number)
    BottleNumber.new(number).intro
  end

  def container(number)
    BottleNumber.new(number).container(number)
  end

  def outro(number)
    BottleNumber.new(number).outro(number)
  end

  def name_of(number)
    BottleNumber.new(number).name_of(number)
  end

  def pronoun(number)
     BottleNumber.new(number).pronoun(number)
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

  def container(number)
    if number == 2
      "bottle"
    else
      "bottles"
    end
  end

  def outro(number)
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def name_of(number)
    if number == 0
      "99"
    elsif number == 1
      "no more"
    else
      (number-1).to_s
    end
  end

  def pronoun(number)
    if number == 1
      "it"
    else
      "one"
    end
  end
end
