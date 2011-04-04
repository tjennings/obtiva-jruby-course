require 'java'

# Usage: 
#
# calculator = Calculator.new
#
# calculator.evaluate("1")
# calculator.evaluate("+")
# calculator.evaluate("1")
# calculator.evaluate("=")
# 2 == calculator.current_value
#
class Calculator
  OPERATORS = ["+", "-", "/", "*"]
  FUNCTIONS = ["=", "CE"]
  OPERATIONS = OPERATORS + FUNCTIONS

  attr_reader :current_value

  def initialize
    @current_value = ""
    @stack = []
  end

  def evaluate(value)
    if OPERATORS.include? value
      push_stack(value)
      reset
    elsif value == "="
      calculate
    elsif value == "CE"
      clear_stack
      reset
    else
      @current_value << value
    end
  end

  def calculate
    @stack << @current_value
    @current_value = (eval @stack.join).to_s
    clear_stack
  end

  def push_stack(operator)
    @stack << @current_value
    @stack << operator
    reset
  end

  def clear_stack
    @stack = []
  end

  def reset
    @current_value = ""
  end
end
