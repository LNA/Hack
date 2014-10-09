class Mice
  def initialize(number, pieces_of_grain_per_day, number_reporduced_per_day)
    @number                    = number
    @pieces_of_grain_per_day   = pieces_of_grain_per_day
    @number_reporduced_per_day = number_reporduced_per_day
  end

  def number_of_mice
    @number
  end

  def pieces_of_grain_per_day
    @pieces_of_grain_per_day 
  end

  def number_reporduced_per_day
    @number_reporduced_per_day
  end
end