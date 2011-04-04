require 'java'

JHashMap = java.util.HashMap

class JHashMap
  def + (other)
    map = JHashMap.new
    map.put_all self
    map.put_all other
    map
  end
  def print
    to_a.join(">")
  end
end

one_two = JHashMap.new(:one => 1) +
          JHashMap.new(:two => 2)

puts one_two.print


