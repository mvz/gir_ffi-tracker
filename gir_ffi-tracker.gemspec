# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "gir_ffi-tracker"
  s.version = "0.1.2"

  s.summary = "GirFFI-based binding to Tracker"

  s.authors = ["Matijs van Zuijlen"]
  s.email = ["matijs@matijs.net"]
  s.homepage = "http://www.github.com/mvz/gir_ffi-tracker"

  s.rdoc_options = ["--main", "README.rdoc"]

  s.files = Dir['{lib,test,tasks,examples}/**/*', "*.rdoc", "Rakefile"] & `git ls-files -z`.split("\0")
  s.extra_rdoc_files = ["README.rdoc"]
  s.test_files = `git ls-files -z -- test`.split("\0")

  s.add_runtime_dependency(%q<gir_ffi>, ["~> 0.4.0"])
  s.add_development_dependency('minitest', [">= 2.0.2"])
  s.add_development_dependency('rake', ["~> 0.9.2"])

  s.require_paths = ["lib"]
end
