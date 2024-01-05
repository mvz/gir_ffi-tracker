# GirFFI-Tracker

GirFFI-based bindings for Tracker

[![Build Status](https://secure.travis-ci.org/mvz/gir_ffi-tracker.png)](http://travis-ci.org/mvz/gir-ffi-tracker)

## Features

* Auto-generated bindings using GObject introspection.
* Adds overrides for introspection data bugs.
* Supports Tracker 2.0 and 3.0

## Install

```bash
gem install gir_ffi-tracker
```

## Examples

With Tracker 2.0:

```ruby
require "gir_ffi-tracker"

conn = Tracker::SparqlConnection.get
cursor = conn.query "SELECT nie:url(?u) WHERE { ?u a nfo:FileDataObject }"
count = 0
while cursor.next
  count += 1
  puts "Found #{cursor.get_string 0}"
end
puts "Total: #{count}"
```

With Tracker 3.0:

```ruby
require "gir_ffi-tracker"

conn = Tracker::SparqlConnection.bus_new("org.freedesktop.Tracker3.Miner.Files")
cursor = conn.query "SELECT nie:url(?u) WHERE { ?u a nfo:FileDataObject }"
count = 0
while cursor.next
  count += 1
  puts "Found #{cursor.get_string 0}"
end
puts "Total: #{count}"
```

## Requirements

This gem depends on the [GirFFI](https://rubygems.org/gems/gir_ffi) gem and its
requirements. In addition, it needs introspection data for the
Tracker 2.0 or 3.0 client library.

On Debian and Ubuntu, for Tracker 2.0, try:

```bash
apt-get install gir1.2-tracker-2.0
```

And for Tracker 3.0:

```
apt-get install gir1.2-tracker-3.0
```

This gem has not been tested on Mac OS X or Microsoft Windows. YMMV. Pull
requests to support these platforms are welcome.

## License

Copyright &copy; 2011&ndash;2016, 2018&ndash;2023 [Matijs van Zuijlen](http://www.matijs.net)

GirFFI-Tracker is free software, distributed under the terms of the GNU
Lesser General Public License, version 2.1 or later. See the file
COPYING.LIB for more information.
