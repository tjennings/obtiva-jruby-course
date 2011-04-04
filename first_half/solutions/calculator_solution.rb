require 'java'
require '../calculator'

class CalculatorUI
  include_package 'javax.swing'
  include_package 'java.awt'
  include_package 'java.awt.event'

  def initialize
    @calculator = Calculator.new
    window, panel = init_window

    @display = init_display
    panel.add @display
    panel.add init_digits
    panel.add init_operators

    window.visible = true
  end

  def init_window
    frame = JFrame.new("Calculator")
    frame.default_close_operation = JFrame::EXIT_ON_CLOSE
    frame.setSize(450,450)
    panel = JPanel.new
    panel.layout = BoxLayout.new panel, BoxLayout::PAGE_AXIS
    frame.add panel
    [frame, panel]
  end

  def init_display
    display = JTextField.new
    display.maximum_size = Dimension.new(500, 30)
    display.enabled = false
    display
  end

  def init_digits
    digits = JPanel.new
    digits.layout = GridLayout.new 0, 3
    (0..9).each do |i|
      button = JButton.new i.to_s
      button.add_action_listener self
      digits.add button
    end
    digits
  end

  def init_operators
    panel = JPanel.new
    panel.layout = BoxLayout.new panel, BoxLayout::LINE_AXIS
    Calculator::OPERATIONS.each do |op|
      button = JButton.new op
      button.add_action_listener self
      panel.add button
    end
    panel
  end

  def actionPerformed(event)
    value = event.source.label
    @calculator.evaluate value
    update_display
  end

  def update_display
    @display.text = @calculator.current_value
  end
end

CalculatorUI.new
