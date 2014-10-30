class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, finish)
    start.downto(finish).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    "#{intro(number)} #{container(number + 1)} of beer on the wall, #{intro(number).downcase} #{container(number + 1)} of beer.\n#{action(number)}, #{changeover(number)} #{container(number)} of beer on the wall.\n"
  end

  private

  def intro(number = :FIXME)
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

  def action(number)
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def changeover(number)
    if number == 0
      "99"
    else
      successor(number)
    end
  end

  def successor(number)
    if number == 1
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