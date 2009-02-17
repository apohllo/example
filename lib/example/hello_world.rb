class HelloWorld
  def message
    "Hello world"
  end

  def say_hello(out=$stdout)
    out << (self.message + "\n")
  end
end
