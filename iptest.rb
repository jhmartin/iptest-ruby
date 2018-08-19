#!/usr/bin/env ruby

require 'net/http'

i = 10_000
while i > 0
  res = Net::HTTP.get('ip', '/')
  puts "SIMPLE\t#{res}"
  i -= 1
end

uri = URI('http://ip')

Net::HTTP.start(uri.host, uri.port) do |http|
  i = 10_000
  while i > 0
    request = Net::HTTP::Get.new uri
    res = http.request request
    puts "PERSISTENT\t#{res.body}"
    i -= 1
  end
end
