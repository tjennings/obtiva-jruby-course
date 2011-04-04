require 'java'
import javax.swing.JFrame

frame = JFrame.new("Test")
#Java version
frame.setSize(450,450)
#Jruby's
frame.set_size(450, 450)

#Java setter
frame.setVisible true
#JRuby's version
frame.visible = true


