# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "gir_ffi-tracker"
  s.version = "0.2.0"

  s.summary = "GirFFI-based binding to Tracker"

  s.authors = ["Matijs van Zuijlen"]
  s.email = ["matijs@matijs.net"]
  s.homepage = "http://www.github.com/mvz/gir_ffi-tracker"

  s.rdoc_options = ["--main", "README.md"]

  s.files = Dir[ '{lib,test,tasks,examples}/**/*',
                 "*.md",
                 "Rakefile",
                 "COPYING.lIB" ] & `git ls-files -z`.split("\0")

  s.extra_rdoc_files = ["README.md", "Changelog.md"]
  s.test_files = `git ls-files -z -- test`.split("\0")

  s.add_runtime_dependency('gir_ffi', ["~> 0.5.0"])

  s.add_development_dependency('minitest', ["~> 3.2.0"])
  s.add_development_dependency('rake', ["~> 10.0.3"])

  s.require_paths = ["lib"]
end
