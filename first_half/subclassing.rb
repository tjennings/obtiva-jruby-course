require 'java'
class RubyMap < java.util.HashMap
end

p RubyMap.new.methods.grep(/key/).sort


