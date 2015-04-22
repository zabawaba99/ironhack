require 'uri'
require 'json'
require 'net/http'

puts "making post http request"
uri = URI('http://localhost:3000/example/post')
headers = {'Content-Type' => 'application/json'}

req = Net::HTTP::Post.new(uri, headers)
# {"param1":"some value", "param2":"some other value"}
req.body = {param1:"some value", param2:"some other value"}.to_json
res = Net::HTTP.start(uri.hostname, uri.port) do |http|
  http.request(req)
end

puts "\nresponse received\n\n"
puts "Status code: #{res.code}\n"
puts "Headers:"
res.each_header do |header, value|
  puts "\t#{header}:#{value}"
end
puts "\nBody: #{res.body}"
