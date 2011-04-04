# Don’t let the threads writing to the
# output array muddle up the message!
#
# BONUS: Solve the problem with Threadlocals
# instead of a Mutex

require 'java'
require 'thread'

output, threads = [], []
string = "Don't muddle me up!!\n"

100.times do |t|
  threads << Thread.start do
    100.times do 
      string.each_char do |c|
        output << c
      end
    end
  end
end

threads.each {|t| t.join}
puts output.join.split("\n").reject{|s| s == string.strip}


