require 'java'

class ButtonLayoutUI
  include_package 'javax.swing'
  include_package 'java.awt'

  def initialize
    frame = JFrame.new("Calculator")
    frame.default_close_operation = JFrame::EXIT_ON_CLOSE
    frame.setSize(100,100)
    digits = JPanel.new
    digits.layout = GridLayout.new 3, 3

    (1..9).each do |n|
      digits.add JButton.new n.to_s
    end
    frame.add digits
    frame.visible = true
  end
end
ButtonLayoutUI.new


