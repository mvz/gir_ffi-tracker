# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "gir_ffi-tracker"
  spec.version = "0.15.0"
  spec.authors = ["Matijs van Zuijlen"]
  spec.email = ["matijs@matijs.net"]

  spec.summary = "GirFFI-based binding to Tracker"
  spec.description = "Bindings for Tracker generated by GirFFI, with overrides."
  spec.homepage = "http://www.github.com/mvz/gir_ffi-tracker"
  spec.license = "LGPL-2.1+"

  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mvz/gir_ffi-tracker"
  spec.metadata["changelog_uri"] = "https://github.com/mvz/gir_ffi-tracker/blob/master/Changelog.md"

  spec.files = File.read("Manifest.txt").split
  spec.rdoc_options = ["--main", "README.md"]
  spec.extra_rdoc_files = ["README.md", "Changelog.md"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "gir_ffi", "~> 0.15.0"

  spec.add_development_dependency "minitest", "~> 5.12"
  spec.add_development_dependency "pry", "~> 0.14.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rake-manifest", "~> 0.2.0"
  spec.add_development_dependency "rubocop", "~> 1.21.0"
  spec.add_development_dependency "rubocop-minitest", "~> 0.15.0"
  spec.add_development_dependency "rubocop-packaging", "~> 0.5.0"
  spec.add_development_dependency "rubocop-performance", "~> 1.11.0"
  spec.add_development_dependency "simplecov", "~> 0.21.0"
  spec.add_development_dependency "yard", "~> 0.9.14"
end
