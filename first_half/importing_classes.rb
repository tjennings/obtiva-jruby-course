require 'java'

import javax.swing.JFrame

frame = JFrame.new("Test")
frame.default_close_operation =
  JFrame::EXIT_ON_CLOSE
frame.setSize(450,450)
frame.visible = true




