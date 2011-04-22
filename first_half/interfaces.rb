require 'java'

class PressTheButtonUI
  include_package 'javax.swing'
  include_package 'java.awt.event'  

  #Implement an interface (optional)
  include ActionListener

  def initialize
    frame = JFrame.new("Calculator")
    frame.default_close_operation = JFrame::EXIT_ON_CLOSE
    frame.setSize(450,450)
    button = JButton.new("Press ME")

    button.add_action_listener self
    button.add_action_listener do |event|
      puts "BLOCK: " + event.source.label
    end

    frame.add button
    frame.visible = true
  end

  def actionPerformed(event)
    puts  "METHOD: " + event.source.label
  end
end
PressTheButtonUI.new

