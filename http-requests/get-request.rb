require 'uri'
require 'net/http'


puts "making get http request"

url = URI('http://localhost:3000/example/get')
req = Net::HTTP::Get.new(url.to_s)
res = Net::HTTP.start(url.host, url.port) {|http|
  http.request(req)
}

puts "\nresponse received\n\n"
puts "Status code: #{res.code}\n"
puts "Headers"
res.each_header do |header, value|
  puts "\t#{header}:#{value}"
end
puts "\nBody: #{res.body}"
