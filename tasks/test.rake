require 'rake/testtask'

namespace :test do

  Rake::TestTask.new(:unit) do |t|
    t.libs = ['lib']
    t.test_files = FileList['test/unit/*_test.rb']
    t.ruby_opts += ["-w"]
  end

  Rake::TestTask.new(:integration) do |t|
    t.libs = ['lib']
    t.test_files = FileList['test/integration/*_test.rb']
    t.ruby_opts += ["-w"]
  end

  desc 'Run rcov for the entire test suite'
  task :coverage do
    rm_f "coverage"
    system "rcov", "-Ilib", "--exclude", "\.gem\/,\/gems\/", *FileList['test/**/*_test.rb']
  end
end

desc 'Run unit and integration tests'
task :test => ['test:unit', 'test:integration']
