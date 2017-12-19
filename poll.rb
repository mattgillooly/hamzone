require_relative 'lib/licenses'
require 'rest-client'

WEBOOK_URL = ENV['SLACK_MYSELF_WEBHOOK_URL']

frn = ARGV.last

puts "Waiting for callsign(s) for FRN #{frn}"

licenses = Licenses.new
callsigns = licenses.get_callsigns(frn)

while callsigns.empty?
  print '.'
  sleep 2 * 60
  callsigns = licenses.get_callsigns(frn)
end

puts

m = "Found callsign(s) for FRN #{frn}: #{callsigns.join(', ')}"
puts m

p RestClient.post WEBOOK_URL, { text: m }.to_json, content_type: 'application/json'
