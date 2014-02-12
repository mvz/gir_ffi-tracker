require 'rake/testtask'

namespace :test do
  desc 'run unit tests'
  Rake::TestTask.new(:unit) do |t|
    t.libs = ['lib']
    t.test_files = FileList['test/unit/*_test.rb']
    t.ruby_opts += ["-w"]
  end

  desc 'run integration tests'
  Rake::TestTask.new(:integration) do |t|
    t.libs = ['lib']
    t.test_files = FileList['test/integration/*_test.rb']
    t.ruby_opts += ["-w"]
  end
end

desc 'run unit and integration tests'
task :test => ['test:unit', 'test:integration']
