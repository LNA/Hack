$: << File.expand_path(File.dirname(__FILE__))
require 'lib/cats'
require 'lib/command_line_runner'
require 'lib/grain'
require 'lib/mice'
require 'lib/ui'


cats  = Cats.new(10, 6, 2)
grain = Grain.new(1000)
mice  = Mice.new(12, 10, 1)
ui    = UI.new

command_line_runner = CommandLineRunner.new(cats, grain, mice, ui)
command_line_runner.start