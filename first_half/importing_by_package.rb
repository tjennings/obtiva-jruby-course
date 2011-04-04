require 'java'

class TestUI
  include_package "javax.swing"
  include_package "java.awt"

  def initialize
    frame = JFrame.new("Test")
    frame.default_close_operation =
      JFrame::EXIT_ON_CLOSE
    frame.setSize(450,450)

    box = JTextField.new
    box.maximum_size = Dimension.new(30,30)
    frame.add box

    frame.visible = true
  end
end
TestUI.new



