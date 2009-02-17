# automatically require all the source files in the 'example' subdirectory 
Dir.glob(File.join(File.dirname(__FILE__), 'example/**.rb')).each { |f| require f }
