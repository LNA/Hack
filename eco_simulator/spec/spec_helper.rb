require 'rspec'
require 'cats'
require 'command_line_runner'
require 'grain'
require 'mice'
 
Dir["./lib/*.rb"].each { |file| require file }