class UI

  WELCOME_MESSAGE           = "Welcome to the Eco Simulator"
  BEGGINNING_OF_DAY_MESSAGE = "In the beginning of the day...."
  END_OF_DAY_MESSAGE        = "At the end of the day..."
  EMPTY_LINE                = " "

  def welcome_message
    puts WELCOME_MESSAGE
  end

  def beginning_of_day_message
    puts BEGGINNING_OF_DAY_MESSAGE
  end

  def end_of_day_message
    puts END_OF_DAY_MESSAGE
  end

  def empty_line
    puts EMPTY_LINE 
  end

  def number_of_item_message(number, item)
    puts "You have #{number} #{item}."
  end
end