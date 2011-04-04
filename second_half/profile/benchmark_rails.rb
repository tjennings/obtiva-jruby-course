require 'benchmark'
require 'net/http'
require 'uri'

puts Benchmark.measure {  
  15.times do 
    res = Net::HTTP.start("localhost", 3000) {|http|
      res = http.get('/')
      raise "server error" unless res.is_a? Net::HTTPSuccess
    }
  end
}
