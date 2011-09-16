begin
  require "rdoc/task"

  RDoc::Task.new(:rdoc => "rdoc", :clobber_rdoc => "rdoc:clean", :rerdoc => "rdoc:force") do |rdoc|
    rdoc.main = "README.rdoc"
    rdoc.rdoc_files.include "README.rdoc", "lib/**/*.rb"
  end
rescue LoadError
end
