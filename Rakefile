# frozen_string_literal: true

require "rake/clean"
require "bundler/gem_tasks"
require "rake/manifest/task"

import "tasks/test.rake"

Rake::Manifest::Task.new do |t|
  t.patterns = ["lib/**/*.rb", "*.md", "COPYING.LIB"]
end

task build: "manifest:check"

task default: :test
