$: << File.expand_path(File.dirname(__FILE__))

require 'cats'
require 'grain'
require 'mice'
require 'ui'

class CommandLineRunner
  def initialize(cats, grain, mice, ui)
    @cats  = cats
    @grain = grain
    @mice  = mice
    @ui    = ui
  end

  def start
    @ui.welcome_message
    @ui.beginning_of_day_message
    @ui.empty_line
    @ui.number_of_item_message(starting_number_of_cats, "cats")
    @ui.number_of_item_message(@mice.number_of_mice, "mice")
    @ui.number_of_item_message(@grain.pieces_of_grain, "grain")
    puts "One cat eats #{@cats.number_of_mice_per_day} mice per day."
    puts "One mouse eats #{@mice.pieces_of_grain_per_day} pieces of grain per day."
    puts "Cats reproduce #{@cats.number_reporduced_per_day} per day and mice #{@mice.number_reporduced_per_day} per day."
    @ui.empty_line
    @ui.end_of_day_message
    @ui.empty_line
    @ui.number_of_item_message(ending_number_of_cats, "cats")
    @ui.number_of_item_message(@mice.number_of_mice + @mice.number_reporduced_per_day - @cats.number_of_mice_per_day, "mice")
    @ui.number_of_item_message((@grain.pieces_of_grain - (@mice.number_of_mice * @mice.pieces_of_grain_per_day)), "pieces of grain")
  end

  private

  def starting_number_of_cats 
    @cats.number_of_cats
  end

  def ending_number_of_cats
    @cats.number_of_cats + @cats.number_reporduced_per_day
  end
end