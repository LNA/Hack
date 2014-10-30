class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, finish)
    start.downto(finish).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    case number
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1
      "#{number} #{container(number + 1)} of beer on the wall, #{number} #{container(number + 1)} of beer.\nTake it down and pass it around, no more #{container(number)} of beer on the wall.\n"
    else
      "#{number} #{container(number + 1)} of beer on the wall, #{number} #{container(number + 1)} of beer.\nTake one down and pass it around, #{number-1} #{container(number)} of beer on the wall.\n"
    end
  end

  def container(number)
    if number == 2
      "bottle"
    else
      "bottles"
    end
  end
end

#1. Find the two lines that are the most similar
#2. Find the smallerst change between them and make them more alike
#3. Stay one undo from the green
#4. Keep it green