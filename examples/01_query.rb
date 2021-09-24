require "gir_ffi-tracker"

conn = Tracker::SparqlConnection.bus_new("org.freedesktop.Tracker3.Miner.Files")
cursor = conn.query "SELECT nie:url(?u) WHERE { ?u a nfo:FileDataObject }"
count = 0
while cursor.next
  count += 1
  puts "Found #{cursor.get_string 0}"
end
puts "Total: #{count}"
