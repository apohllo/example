Gem::Specification.new do |s|
  s.name = "example"
  s.version = "0.0.1"
  s.date = "2009-02-17"
  s.summary = "Ruby example gem"
  s.email = "apohllo@o2.pl"
  #s.homepage = "http://www.example.com"
  s.description = "Ruby example gem"
  s.authors = ['Aleksander Pohl']
  # the lib path is added to the LOAD_PATH
  s.require_path = "lib"
  # include Rakefile, gemspec, README and all the source files
  s.files = ["Rakefile", "example.gemspec", "README"] +
    Dir.glob("lib/**/*")
  # include tests and specs
  s.test_files = Dir.glob("{test,spect}/**/*")
  # include README while generating rdoc
  s.rdoc_options = ["--main", "README"]
  s.has_rdoc = true
  s.extra_rdoc_files = ["README"]
end

