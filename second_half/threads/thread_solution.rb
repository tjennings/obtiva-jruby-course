require 'java'
require 'thread'

output, threads = [], []
string = "Don't muddle me up!!\n"
lock = Mutex.new

100.times do |t|
  threads << Thread.start do
    100.times do 
      lock.synchronize do 
        string.each_char do |c|
          output << c
        end
      end
    end
  end
end

threads.each {|t| t.join}
puts output.join.split("\n").reject{|s| s == string.strip}
