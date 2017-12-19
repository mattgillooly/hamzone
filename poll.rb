require_relative 'lib/licenses'

frn = ARGV.last

puts "Waiting for callsign for FRN: #{frn}"

licenses = Licenses.new
callsigns = licenses.get_callsigns(frn)

while callsigns.empty?
  print '.'
  sleep 2 * 60
  callsigns = licenses.get_callsigns(frn)
end

puts
puts "Found callsign(s):"
puts callsigns
