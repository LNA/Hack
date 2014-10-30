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

#1. Find the two lines that are the most similar
#2. Find the smallerst change between them and make them more alike
#3. Stay one undo from the green
#4. Keep it green