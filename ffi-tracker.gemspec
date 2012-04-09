# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ffi-tracker"
  s.version = "0.1.0"

  s.summary = "FFI-based binding to Tracker, using the GObject Introspection Repository (deprecated)"

  s.post_install_message = <<-WARNING
    #########################################################################

    The gem ffi-tracker won't be updated anymore. Please use gir_ffi-tracker.

    #########################################################################
  WARNING

  s.authors = ["Matijs van Zuijlen"]
  s.email = ["matijs@matijs.net"]
  s.homepage = "http://www.github.com/mvz/ffi-tracker"

  s.add_runtime_dependency(%q<gir_ffi-tracker>, ["~> 0.1.0"])
end
