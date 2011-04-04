# Use what you've learned about JRuby's
# Java integration and Swing to build a UI
# for the calculator class.
#
# Don't forget to look at the examples from this
# section to help you out!  All the tools you 
# need are in there.  

require 'java'
require 'calculator'

class CalculatorUI
  def initialize
    @calculator = Calculator.new
  end
end

CalculatorUI.new
