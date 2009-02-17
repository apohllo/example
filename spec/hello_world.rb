require File.join(File.dirname(__FILE__),"..","lib","example")


describe HelloWorld do
  MESSAGE_RE = /Hello world/
   
  before(:all) do
    @hello_world = HelloWorld.new
  end

  it "should respond to 'message'" do 
    @hello_world.should respond_to(:message)
  end

  it "should return message matching the pattern" do 
    @hello_world.message.should =~ MESSAGE_RE
  end

  it "should respond to 'say_hello'" do
    @hello_world.should respond_to(:say_hello)
  end

  it "should say hello to the std output by default" do
    (proc do
      @hello_world.say_hello
    end).should_not raise_error(RuntimeError)
  end

  it "should say hello to the attribute passed to the 'say_hello'" do
    str = ""
    @hello_world.say_hello(str)
    str.should =~ MESSAGE_RE
  end
end
