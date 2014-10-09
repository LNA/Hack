class Cats
  def initialize(number, number_of_mice_per_day, number_reporduced_per_day)
    @number                    = number
    @number_of_mice_per_day    = number_of_mice_per_day
    @number_reporduced_per_day = number_reporduced_per_day
  end

  def number_of_cats
    @number 
  end

  def number_of_mice_per_day
    @number_of_mice_per_day 
  end

  def number_reporduced_per_day
    @number_reporduced_per_day
  end
end